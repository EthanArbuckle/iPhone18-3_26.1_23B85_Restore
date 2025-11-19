@interface NSArray
- (id)localizedArrayValues;
- (id)localizedVersionString;
@end

@implementation NSArray

- (id)localizedArrayValues
{
  v3 = +[NSLocale autoupdatingCurrentLocale];
  v4 = [v3 groupingSeparator];

  if ([v4 length])
  {
    v5 = [v4 stringByAppendingString:@" "];
  }

  else
  {
    v5 = @", ";
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1000B7B14;
  v18 = sub_1000B7B24;
  v19 = objc_alloc_init(NSMutableString);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000B7B2C;
  v11[3] = &unk_1001F2F98;
  v13 = &v14;
  v6 = v5;
  v12 = v6;
  [(NSArray *)self enumerateObjectsUsingBlock:v11];
  v7 = v15[5];
  v8 = v12;
  v9 = v7;

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (id)localizedVersionString
{
  v3 = objc_alloc_init(NSMutableString);
  v4 = objc_alloc_init(NSNumberFormatter);
  [v4 _extractor_setFormat:@"#0;0;#0"];
  v5 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
  [v4 setLocale:v5];

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000B7E34;
  v13 = &unk_1001F2FC0;
  v6 = v3;
  v14 = v6;
  v15 = v4;
  v7 = v4;
  [(NSArray *)self enumerateObjectsUsingBlock:&v10];
  if ([v6 length] < 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v6 substringToIndex:{objc_msgSend(v6, "length") - 1}];
  }

  return v8;
}

@end