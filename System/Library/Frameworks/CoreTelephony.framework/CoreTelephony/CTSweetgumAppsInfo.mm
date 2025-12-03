@interface CTSweetgumAppsInfo
- (BOOL)isEqual:(id)equal;
- (CTSweetgumAppsInfo)init;
- (CTSweetgumAppsInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTSweetgumAppsInfo

- (CTSweetgumAppsInfo)init
{
  v7.receiver = self;
  v7.super_class = CTSweetgumAppsInfo;
  v2 = [(CTSweetgumAppsInfo *)&v7 init];
  v3 = v2;
  if (v2)
  {
    appsList = v2->_appsList;
    v2->_appsList = 0;

    appsURL = v3->_appsURL;
    v3->_appsURL = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  appsList = [(CTSweetgumAppsInfo *)self appsList];
  [v3 appendFormat:@" appIdList=%@", appsList];

  appsURL = [(CTSweetgumAppsInfo *)self appsURL];
  [v3 appendFormat:@" appsURL=%@", appsURL];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      appsList = [(CTSweetgumAppsInfo *)self appsList];
      appsList2 = [(CTSweetgumAppsInfo *)equalCopy appsList];
      if (appsList == appsList2 || (-[CTSweetgumAppsInfo appsList](self, "appsList"), v3 = objc_claimAutoreleasedReturnValue(), -[CTSweetgumAppsInfo appsList](equalCopy, "appsList"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqualToArray:v4]))
      {
        appsURL = [(CTSweetgumAppsInfo *)self appsURL];
        appsURL2 = [(CTSweetgumAppsInfo *)equalCopy appsURL];
        if (appsURL == appsURL2)
        {
          v9 = 1;
        }

        else
        {
          appsURL3 = [(CTSweetgumAppsInfo *)self appsURL];
          appsURL4 = [(CTSweetgumAppsInfo *)equalCopy appsURL];
          v9 = [appsURL3 isEqualToString:appsURL4];
        }

        if (appsList == appsList2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v9 = 0;
      }

LABEL_13:
      goto LABEL_14;
    }

    v9 = 0;
  }

LABEL_14:

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  appsList = self->_appsList;
  coderCopy = coder;
  [coderCopy encodeObject:appsList forKey:@"appsList"];
  [coderCopy encodeObject:self->_appsURL forKey:@"appsURL"];
}

- (CTSweetgumAppsInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CTSweetgumAppsInfo;
  v5 = [(CTSweetgumAppsInfo *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"appsList"];
    appsList = v5->_appsList;
    v5->_appsList = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appsURL"];
    appsURL = v5->_appsURL;
    v5->_appsURL = v11;
  }

  return v5;
}

@end