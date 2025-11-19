@interface ANNotificationAction
+ (id)actionForLaunchingApp:(id)a3 withOptions:(id)a4;
+ (id)actionForOpeningWebURL:(id)a3;
- (ANNotificationAction)initWithCoder:(id)a3;
- (ANNotificationAction)initWithDictionaryRepresentation:(id)a3;
- (ANNotificationAction)initWithManagedObject:(id)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)perform;
@end

@implementation ANNotificationAction

+ (id)actionForOpeningWebURL:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ANNotificationAction);
  [(ANNotificationAction *)v4 setUrl:v3];

  [(ANNotificationAction *)v4 setIsInternalURL:0];

  return v4;
}

+ (id)actionForLaunchingApp:(id)a3 withOptions:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(ANNotificationAction);
  [(ANNotificationAction *)v7 setUrl:v6];

  [(ANNotificationAction *)v7 setIsInternalURL:1];
  [(ANNotificationAction *)v7 setOptions:v5];

  return v7;
}

- (ANNotificationAction)initWithManagedObject:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ANNotificationAction;
  v5 = [(ANNotificationAction *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEBC0];
    v7 = [v4 url];
    v8 = [v6 URLWithString:v7];
    url = v5->_url;
    v5->_url = v8;

    v10 = [v4 isInternal];
    v5->_isInternalURL = [v10 BOOLValue];

    v11 = [v4 options];
    options = v5->_options;
    v5->_options = v11;
  }

  v13 = v5;

  return v13;
}

- (ANNotificationAction)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ANNotificationAction;
  v5 = [(ANNotificationAction *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_isInternalURL"];
    v5->_isInternalURL = [v8 BOOLValue];

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v9 setWithObjects:{v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"_options"];
    options = v5->_options;
    v5->_options = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  url = self->_url;
  v6 = a3;
  [v6 encodeObject:url forKey:@"_url"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isInternalURL];
  [v6 encodeObject:v5 forKey:@"_isInternalURL"];

  [v6 encodeObject:self->_options forKey:@"_options"];
}

- (ANNotificationAction)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ANNotificationAction;
  v5 = [(ANNotificationAction *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"_url"];
    if (v6)
    {
      v7 = [MEMORY[0x277CBEBC0] URLWithString:v6];
      url = v5->_url;
      v5->_url = v7;
    }

    v9 = [v4 objectForKeyedSubscript:@"_isInternalURL"];
    v5->_isInternalURL = [v9 BOOLValue];

    v10 = [v4 objectForKeyedSubscript:@"_options"];
    options = v5->_options;
    v5->_options = v10;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  url = self->_url;
  if (url)
  {
    v5 = [(NSURL *)url absoluteString];
    [v3 setObject:v5 forKeyedSubscript:@"_url"];
  }

  options = self->_options;
  if (options)
  {
    [v3 setObject:options forKeyedSubscript:@"_options"];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isInternalURL];
  [v3 setObject:v7 forKeyedSubscript:@"_isInternalURL"];

  v8 = [v3 copy];

  return v8;
}

- (void)perform
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = _ANLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    url = self->_url;
    v10 = 136315650;
    v11 = "[ANNotificationAction perform]";
    v12 = 1024;
    v13 = 276;
    v14 = 2112;
    v15 = url;
    _os_log_impl(&dword_23DC5E000, v3, OS_LOG_TYPE_DEFAULT, "%s (%d) Launching URL: %@", &v10, 0x1Cu);
  }

  isInternalURL = self->_isInternalURL;
  v6 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v7 = v6;
  v8 = self->_url;
  if (isInternalURL)
  {
    [v6 openSensitiveURL:v8 withOptions:self->_options];
  }

  else
  {
    [v6 openURL:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)initWithManagedObject:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 217;
  _os_log_error_impl(&dword_23DC5E000, v0, OS_LOG_TYPE_ERROR, "%s (%d) NSObjectInaccessibleException caught inside [ANNotificationAction initWithManagedObject:]", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

@end