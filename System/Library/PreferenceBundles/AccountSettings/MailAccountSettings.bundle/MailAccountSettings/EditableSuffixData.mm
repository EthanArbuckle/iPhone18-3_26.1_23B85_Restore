@interface EditableSuffixData
- (EditableSuffixData)initWithSuffixString:(id)string;
@end

@implementation EditableSuffixData

- (EditableSuffixData)initWithSuffixString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = EditableSuffixData;
  v6 = [(EditableSuffixData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_editableSuffixString, string);
  }

  return v7;
}

@end