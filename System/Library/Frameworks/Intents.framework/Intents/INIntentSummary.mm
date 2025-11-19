@interface INIntentSummary
- (INIntentSummary)initWithIntentIdentifier:(id)a3 originatingBundleId:(id)a4 languageCode:(id)a5;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation INIntentSummary

- (void)setSubtitle:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_subtitle isEqualToString:?])
  {
    objc_storeStrong(&self->_subtitle, a3);
  }

  self->_containedProperties |= 2uLL;
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    objc_storeStrong(&self->_title, a3);
  }

  self->_containedProperties |= 1uLL;
}

- (INIntentSummary)initWithIntentIdentifier:(id)a3 originatingBundleId:(id)a4 languageCode:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = INIntentSummary;
  v11 = [(INIntentSummary *)&v20 init];
  if (v11)
  {
    v12 = [v8 copy];
    intentIdentifier = v11->_intentIdentifier;
    v11->_intentIdentifier = v12;

    v14 = [v9 copy];
    originatingBundleId = v11->_originatingBundleId;
    v11->_originatingBundleId = v14;

    v16 = [v10 copy];
    languageCode = v11->_languageCode;
    v11->_languageCode = v16;

    v18 = v11;
  }

  return v11;
}

@end