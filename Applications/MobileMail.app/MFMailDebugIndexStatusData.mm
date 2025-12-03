@interface MFMailDebugIndexStatusData
- (MFMailDebugIndexStatusData)initWithPrimaryText:(id)text secondaryText:(id)secondaryText labelText:(id)labelText;
@end

@implementation MFMailDebugIndexStatusData

- (MFMailDebugIndexStatusData)initWithPrimaryText:(id)text secondaryText:(id)secondaryText labelText:(id)labelText
{
  textCopy = text;
  secondaryTextCopy = secondaryText;
  labelTextCopy = labelText;
  v15.receiver = self;
  v15.super_class = MFMailDebugIndexStatusData;
  v12 = [(MFMailDebugIndexStatusData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_primaryText, text);
    objc_storeStrong(&v13->_secondaryText, secondaryText);
    objc_storeStrong(&v13->_labelText, labelText);
  }

  return v13;
}

@end