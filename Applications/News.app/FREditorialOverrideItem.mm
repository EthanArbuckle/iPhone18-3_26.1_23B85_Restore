@interface FREditorialOverrideItem
- (FREditorialOverrideItem)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle subtitleColorString:(id)string actionUrlString:(id)urlString;
@end

@implementation FREditorialOverrideItem

- (FREditorialOverrideItem)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle subtitleColorString:(id)string actionUrlString:(id)urlString
{
  identifierCopy = identifier;
  titleCopy = title;
  subtitleCopy = subtitle;
  stringCopy = string;
  urlStringCopy = urlString;
  if (!identifierCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10007572C();
  }

  v29.receiver = self;
  v29.super_class = FREditorialOverrideItem;
  v17 = [(FREditorialOverrideItem *)&v29 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [titleCopy copy];
    title = v17->_title;
    v17->_title = v20;

    v22 = [subtitleCopy copy];
    subtitle = v17->_subtitle;
    v17->_subtitle = v22;

    v24 = [stringCopy copy];
    subtitleColorString = v17->_subtitleColorString;
    v17->_subtitleColorString = v24;

    v26 = [urlStringCopy copy];
    actionUrlString = v17->_actionUrlString;
    v17->_actionUrlString = v26;
  }

  return v17;
}

@end