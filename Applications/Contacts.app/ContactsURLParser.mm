@interface ContactsURLParser
+ (OS_os_log)log;
- (CNContactDataSource_Internal)dataSource;
- (ContactsURLParser)initWithURL:(id)l dataSource:(id)source;
- (id)identifierFromShowCommandURL:(id)l;
- (void)readURL:(id)l;
@end

@implementation ContactsURLParser

+ (OS_os_log)log
{
  if (qword_100029268 != -1)
  {
    sub_10000F180();
  }

  v3 = qword_100029270;

  return v3;
}

- (ContactsURLParser)initWithURL:(id)l dataSource:(id)source
{
  lCopy = l;
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = ContactsURLParser;
  v9 = [(ContactsURLParser *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, l);
    objc_storeWeak(&v10->_dataSource, sourceCopy);
    [(ContactsURLParser *)v10 readURL:lCopy];
    v11 = v10;
  }

  return v10;
}

- (void)readURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  v6 = [scheme isEqualToString:@"contact"];

  if (v6)
  {
    scheme2 = [lCopy scheme];
    v8 = [scheme2 isEqualToString:@"search"];

    if (v8)
    {
      searchResultIdentifier = [lCopy searchResultIdentifier];
      [(ContactsURLParser *)self setLegacyIdenifier:searchResultIdentifier];

      [(ContactsURLParser *)self setAction:1];
    }

    host = [lCopy host];
    v11 = [host isEqualToString:@"show"];

    if (v11)
    {
      v12 = [(ContactsURLParser *)self identifierFromShowCommandURL:lCopy];
      [(ContactsURLParser *)self setIdentifier:v12];

      [(ContactsURLParser *)self setAction:1];
    }

    host2 = [lCopy host];
    v14 = [host2 isEqualToString:@"edit"];

    if (v14)
    {
      v15 = [(ContactsURLParser *)self identifierFromShowCommandURL:lCopy];
      [(ContactsURLParser *)self setIdentifier:v15];

      [(ContactsURLParser *)self setAction:2];
    }

    host3 = [lCopy host];
    v17 = [host3 isEqualToString:@"add"];

    if (v17)
    {
      [(ContactsURLParser *)self setIdentifier:0];
      [(ContactsURLParser *)self setAction:3];
    }
  }

  else
  {
    v18 = [objc_opt_class() log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10000F194(lCopy, v18);
    }
  }
}

- (id)identifierFromShowCommandURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  query = [lCopy query];
  v7 = [query rangeOfString:@"="];
  if (v7)
  {
    v8 = v7;
    if (v7 < [query length] - 1)
    {
      v9 = [query substringToIndex:v8];
      v10 = [query substringFromIndex:v8 + 1];
      if ([v9 isEqualToString:@"id"])
      {
        preferredForNameMeContactIdentifier = v10;
LABEL_16:

        goto LABEL_17;
      }

      if ([v9 isEqualToString:@"ref"])
      {
        if ([v10 isEqualToString:@"me"])
        {
          dataSource = [(ContactsURLParser *)self dataSource];
          preferredForNameMeContactIdentifier = [dataSource preferredForNameMeContactIdentifier];

          goto LABEL_16;
        }

        v13 = [objc_opt_class() log];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10000F2A4();
        }
      }

      else
      {
        v13 = [objc_opt_class() log];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10000F238();
        }
      }

      preferredForNameMeContactIdentifier = 0;
      goto LABEL_16;
    }
  }

  v9 = [objc_opt_class() log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v15 = 138412802;
    v16 = query;
    v17 = 2112;
    v18 = host;
    v19 = 2112;
    v20 = lCopy;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Invalid query '%@' for command '%@' in URL %@.", &v15, 0x20u);
  }

  preferredForNameMeContactIdentifier = 0;
LABEL_17:

  return preferredForNameMeContactIdentifier;
}

- (CNContactDataSource_Internal)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end