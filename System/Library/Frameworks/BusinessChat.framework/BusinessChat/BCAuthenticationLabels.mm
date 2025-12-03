@interface BCAuthenticationLabels
- (BCAuthenticationLabels)initWithCoder:(id)coder;
- (BCAuthenticationLabels)initWithDictionary:(id)dictionary;
- (BCAuthenticationLabels)initWithTitle:(id)title subtitle:(id)subtitle action:(id)action;
- (NSDictionary)dictionaryValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCAuthenticationLabels

- (BCAuthenticationLabels)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = BCAuthenticationLabels;
  v5 = [(BCAuthenticationLabels *)&v23 init];
  if (v5)
  {
    v6 = LogCategory_Daemon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = dictionaryCopy;
      _os_log_impl(&dword_236EA0000, v6, OS_LOG_TYPE_DEFAULT, "BCAuthenticationLabels: initWithDictionary %@", buf, 0xCu);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    null = [MEMORY[0x277CBEB68] null];
    if (v7 == null)
    {
      v9 = 0;
    }

    else
    {
      v9 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
    null2 = [MEMORY[0x277CBEB68] null];
    if (v10 == null2)
    {
      v12 = 0;
    }

    else
    {
      v12 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"action"];
    null3 = [MEMORY[0x277CBEB68] null];
    if (v13 == null3)
    {
      v15 = 0;
    }

    else
    {
      v15 = [dictionaryCopy objectForKeyedSubscript:@"action"];
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

- (BCAuthenticationLabels)initWithTitle:(id)title subtitle:(id)subtitle action:(id)action
{
  v23 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  subtitleCopy = subtitle;
  actionCopy = action;
  v16.receiver = self;
  v16.super_class = BCAuthenticationLabels;
  v12 = [(BCAuthenticationLabels *)&v16 init];
  if (v12)
  {
    v13 = LogCategory_Daemon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v18 = titleCopy;
      v19 = 2112;
      v20 = subtitleCopy;
      v21 = 2112;
      v22 = actionCopy;
      _os_log_impl(&dword_236EA0000, v13, OS_LOG_TYPE_DEFAULT, "BCAuthenticationLabels: initWithTitle: %@, subtitle: %@, action: %@", buf, 0x20u);
    }

    objc_storeStrong(&v12->_title, title);
    objc_storeStrong(&v12->_subtitle, subtitle);
    objc_storeStrong(&v12->_action, action);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_subtitle forKey:@"subtitle"];
  [coderCopy encodeObject:self->_action forKey:@"action"];
}

- (BCAuthenticationLabels)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = BCAuthenticationLabels;
  v5 = [(BCAuthenticationLabels *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
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