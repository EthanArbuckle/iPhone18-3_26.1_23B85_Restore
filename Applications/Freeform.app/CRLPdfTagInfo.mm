@interface CRLPdfTagInfo
+ (id)tagPropertiesWithActualText:(id)text alternativeText:(id)alternativeText titleText:(id)titleText;
- (CRLPdfTagInfo)initWithTagType:(int)type tagProperties:(id)properties;
@end

@implementation CRLPdfTagInfo

- (CRLPdfTagInfo)initWithTagType:(int)type tagProperties:(id)properties
{
  propertiesCopy = properties;
  v11.receiver = self;
  v11.super_class = CRLPdfTagInfo;
  v8 = [(CRLPdfTagInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_tagType = type;
    objc_storeStrong(&v8->_tagProperties, properties);
  }

  return v9;
}

+ (id)tagPropertiesWithActualText:(id)text alternativeText:(id)alternativeText titleText:(id)titleText
{
  textCopy = text;
  alternativeTextCopy = alternativeText;
  titleTextCopy = titleText;
  v10 = objc_opt_new();
  v11 = v10;
  if (textCopy)
  {
    [v10 setObject:textCopy forKeyedSubscript:kCGPDFTagPropertyActualText];
  }

  if (alternativeTextCopy)
  {
    [v11 setObject:alternativeTextCopy forKeyedSubscript:kCGPDFTagPropertyAlternativeText];
  }

  if (titleTextCopy)
  {
    [v11 setObject:titleTextCopy forKeyedSubscript:kCGPDFTagPropertyTitleText];
  }

  return v11;
}

@end