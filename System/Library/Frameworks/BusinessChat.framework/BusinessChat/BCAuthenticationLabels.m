@interface BCAuthenticationLabels
- (BCAuthenticationLabels)initWithCoder:(id)a3;
- (BCAuthenticationLabels)initWithDictionary:(id)a3;
- (BCAuthenticationLabels)initWithTitle:(id)a3 subtitle:(id)a4 action:(id)a5;
- (NSDictionary)dictionaryValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCAuthenticationLabels

- (BCAuthenticationLabels)initWithDictionary:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = BCAuthenticationLabels;
  v5 = [(BCAuthenticationLabels *)&v23 init];
  if (v5)
  {
    v6 = LogCategory_Daemon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v4;
      _os_log_impl(&dword_236EA0000, v6, OS_LOG_TYPE_DEFAULT, "BCAuthenticationLabels: initWithDictionary %@", buf, 0xCu);
    }

    v7 = [v4 objectForKeyedSubscript:@"title"];
    v8 = [MEMORY[0x277CBEB68] null];
    if (v7 == v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = [v4 objectForKeyedSubscript:@"title"];
    }

    v10 = [v4 objectForKeyedSubscript:@"subtitle"];
    v11 = [MEMORY[0x277CBEB68] null];
    if (v10 == v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = [v4 objectForKeyedSubscript:@"subtitle"];
    }

    v13 = [v4 objectForKeyedSubscript:@"action"];
    v14 = [MEMORY[0x277CBEB68] null];
    if (v13 == v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = [v4 objectForKeyedSubscript:@"action"];
    }

    title = v5->_title;
    v5->_title = v9;
    v17 = v9;

    subtitle = v5->_subtitle;
    v5->_subtitle = v12;
    v19 = v12;

    action = v5->_action;
    v5->_action = v15;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BCAuthenticationLabels)initWithTitle:(id)a3 subtitle:(id)a4 action:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = BCAuthenticationLabels;
  v12 = [(BCAuthenticationLabels *)&v16 init];
  if (v12)
  {
    v13 = LogCategory_Daemon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_236EA0000, v13, OS_LOG_TYPE_DEFAULT, "BCAuthenticationLabels: initWithTitle: %@, subtitle: %@, action: %@", buf, 0x20u);
    }

    objc_storeStrong(&v12->_title, a3);
    objc_storeStrong(&v12->_subtitle, a4);
    objc_storeStrong(&v12->_action, a5);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeObject:self->_subtitle forKey:@"subtitle"];
  [v5 encodeObject:self->_action forKey:@"action"];
}

- (BCAuthenticationLabels)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BCAuthenticationLabels;
  v5 = [(BCAuthenticationLabels *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    action = v5->_action;
    v5->_action = v10;
  }

  return v5;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  [v3 setObject:self->_title forKeyedSubscript:@"title"];
  [v3 setObject:self->_subtitle forKeyedSubscript:@"subtitle"];
  [v3 setObject:self->_action forKeyedSubscript:@"action"];
  v4 = [v3 copy];

  return v4;
}

@end