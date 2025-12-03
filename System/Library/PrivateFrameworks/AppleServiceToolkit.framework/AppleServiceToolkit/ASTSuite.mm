@interface ASTSuite
- (ASTSuite)initWithCoder:(id)coder;
- (ASTSuite)initWithId:(id)id suiteNameLocalizedString:(id)string suiteDescriptionLocalizedString:(id)localizedString estimatedCompletionTimeLocalizedString:(id)timeLocalizedString primaryAssetLocator:(id)locator secondaryAssetLocator:(id)assetLocator;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASTSuite

- (ASTSuite)initWithId:(id)id suiteNameLocalizedString:(id)string suiteDescriptionLocalizedString:(id)localizedString estimatedCompletionTimeLocalizedString:(id)timeLocalizedString primaryAssetLocator:(id)locator secondaryAssetLocator:(id)assetLocator
{
  idCopy = id;
  stringCopy = string;
  localizedStringCopy = localizedString;
  timeLocalizedStringCopy = timeLocalizedString;
  locatorCopy = locator;
  assetLocatorCopy = assetLocator;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24.receiver = self;
    v24.super_class = ASTSuite;
    v20 = [(ASTSuite *)&v24 init];
    v21 = v20;
    if (v20)
    {
      [(ASTSuite *)v20 setSuiteID:idCopy];
      [(ASTSuite *)v21 setSuiteNameLocalizedString:stringCopy];
      [(ASTSuite *)v21 setSuiteDescriptionLocalizedString:localizedStringCopy];
      [(ASTSuite *)v21 setEstimatedCompletionTimeLocalizedString:timeLocalizedStringCopy];
      [(ASTSuite *)v21 setPrimaryAssetLocator:locatorCopy];
      [(ASTSuite *)v21 setSecondaryAssetLocator:assetLocatorCopy];
    }

    self = v21;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
  {
    v8 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    suiteID = [(ASTSuite *)self suiteID];
    suiteID2 = [(ASTSuite *)v5 suiteID];
    v8 = [suiteID isEqual:suiteID2];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

- (unint64_t)hash
{
  suiteID = [(ASTSuite *)self suiteID];
  v3 = [suiteID hash];

  return v3;
}

- (ASTSuite)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASTSuite *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suiteID"];
    suiteID = v5->_suiteID;
    v5->_suiteID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suiteNameLocalizedString"];
    suiteNameLocalizedString = v5->_suiteNameLocalizedString;
    v5->_suiteNameLocalizedString = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suiteDescriptionLocalizedString"];
    suiteDescriptionLocalizedString = v5->_suiteDescriptionLocalizedString;
    v5->_suiteDescriptionLocalizedString = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"estimatedCompletionTimeLocalizedString"];
    estimatedCompletionTimeLocalizedString = v5->_estimatedCompletionTimeLocalizedString;
    v5->_estimatedCompletionTimeLocalizedString = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryAssetLocator"];
    primaryAssetLocator = v5->_primaryAssetLocator;
    v5->_primaryAssetLocator = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryAssetLocator"];
    secondaryAssetLocator = v5->_secondaryAssetLocator;
    v5->_secondaryAssetLocator = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  suiteID = [(ASTSuite *)self suiteID];
  [coderCopy encodeObject:suiteID forKey:@"suiteID"];

  suiteNameLocalizedString = [(ASTSuite *)self suiteNameLocalizedString];
  [coderCopy encodeObject:suiteNameLocalizedString forKey:@"suiteNameLocalizedString"];

  suiteDescriptionLocalizedString = [(ASTSuite *)self suiteDescriptionLocalizedString];
  [coderCopy encodeObject:suiteDescriptionLocalizedString forKey:@"suiteDescriptionLocalizedString"];

  estimatedCompletionTimeLocalizedString = [(ASTSuite *)self estimatedCompletionTimeLocalizedString];
  [coderCopy encodeObject:estimatedCompletionTimeLocalizedString forKey:@"estimatedCompletionTimeLocalizedString"];

  primaryAssetLocator = [(ASTSuite *)self primaryAssetLocator];
  [coderCopy encodeObject:primaryAssetLocator forKey:@"primaryAssetLocator"];

  secondaryAssetLocator = [(ASTSuite *)self secondaryAssetLocator];
  [coderCopy encodeObject:secondaryAssetLocator forKey:@"secondaryAssetLocator"];
}

@end