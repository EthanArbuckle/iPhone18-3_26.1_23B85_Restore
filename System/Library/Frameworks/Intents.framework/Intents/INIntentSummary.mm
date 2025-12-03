@interface INIntentSummary
- (INIntentSummary)initWithIntentIdentifier:(id)identifier originatingBundleId:(id)id languageCode:(id)code;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation INIntentSummary

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  if (![(NSString *)self->_subtitle isEqualToString:?])
  {
    objc_storeStrong(&self->_subtitle, subtitle);
  }

  self->_containedProperties |= 2uLL;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    objc_storeStrong(&self->_title, title);
  }

  self->_containedProperties |= 1uLL;
}

- (INIntentSummary)initWithIntentIdentifier:(id)identifier originatingBundleId:(id)id languageCode:(id)code
{
  identifierCopy = identifier;
  idCopy = id;
  codeCopy = code;
  v20.receiver = self;
  v20.super_class = INIntentSummary;
  v11 = [(INIntentSummary *)&v20 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    intentIdentifier = v11->_intentIdentifier;
    v11->_intentIdentifier = v12;

    v14 = [idCopy copy];
    originatingBundleId = v11->_originatingBundleId;
    v11->_originatingBundleId = v14;

    v16 = [codeCopy copy];
    languageCode = v11->_languageCode;
    v11->_languageCode = v16;

    v18 = v11;
  }

  return v11;
}

@end