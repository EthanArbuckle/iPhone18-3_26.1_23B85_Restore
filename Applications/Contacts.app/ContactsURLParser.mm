@interface ContactsURLParser
+ (OS_os_log)log;
- (CNContactDataSource_Internal)dataSource;
- (ContactsURLParser)initWithURL:(id)a3 dataSource:(id)a4;
- (id)identifierFromShowCommandURL:(id)a3;
- (void)readURL:(id)a3;
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

- (ContactsURLParser)initWithURL:(id)a3 dataSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = ContactsURLParser;
  v9 = [(ContactsURLParser *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, a3);
    objc_storeWeak(&v10->_dataSource, v8);
    [(ContactsURLParser *)v10 readURL:v7];
    v11 = v10;
  }

  return v10;
}

- (void)readURL:(id)a3
{
  v4 = a3;
  v5 = [v4 scheme];
  v6 = [v5 isEqualToString:@"contact"];

  if (v6)
  {
    v7 = [v4 scheme];
    v8 = [v7 isEqualToString:@"search"];

    if (v8)
    {
      v9 = [v4 searchResultIdentifier];
      [(ContactsURLParser *)self setLegacyIdenifier:v9];

      [(ContactsURLParser *)self setAction:1];
    }

    v10 = [v4 host];
    v11 = [v10 isEqualToString:@"show"];

    if (v11)
    {
      v12 = [(ContactsURLParser *)self identifierFromShowCommandURL:v4];
      [(ContactsURLParser *)self setIdentifier:v12];

      [(ContactsURLParser *)self setAction:1];
    }

    v13 = [v4 host];
    v14 = [v13 isEqualToString:@"edit"];

    if (v14)
    {
      v15 = [(ContactsURLParser *)self identifierFromShowCommandURL:v4];
      [(ContactsURLParser *)self setIdentifier:v15];

      [(ContactsURLParser *)self setAction:2];
    }

    v16 = [v4 host];
    v17 = [v16 isEqualToString:@"add"];

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
      sub_10000F194(v4, v18);
    }
  }
}

- (id)identifierFromShowCommandURL:(id)a3
{
  v4 = a3;
  v5 = [v4 host];
  v6 = [v4 query];
  v7 = [v6 rangeOfString:@"="];
  if (v7)
  {
    v8 = v7;
    if (v7 < [v6 length] - 1)
    {
      v9 = [v6 substringToIndex:v8];
      v10 = [v6 substringFromIndex:v8 + 1];
      if ([v9 isEqualToString:@"id"])
      {
        v11 = v10;
LABEL_16:

        goto LABEL_17;
      }

      if ([v9 isEqualToString:@"ref"])
      {
        if ([v10 isEqualToString:@"me"])
        {
          v12 = [(ContactsURLParser *)self dataSource];
          v11 = [v12 preferredForNameMeContactIdentifier];

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

      v11 = 0;
      goto LABEL_16;
    }
  }

  v9 = [objc_opt_class() log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v15 = 138412802;
    v16 = v6;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v4;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Invalid query '%@' for command '%@' in URL %@.", &v15, 0x20u);
  }

  v11 = 0;
LABEL_17:

  return v11;
}

- (CNContactDataSource_Internal)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end