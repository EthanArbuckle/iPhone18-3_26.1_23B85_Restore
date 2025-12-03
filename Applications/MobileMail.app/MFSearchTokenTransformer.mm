@interface MFSearchTokenTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation MFSearchTokenTransformer

- (id)transformedValue:(id)value
{
  representedObject = [value representedObject];
  csToken = [representedObject csToken];
  v10 = 0;
  v5 = [NSKeyedArchiver archivedDataWithRootObject:csToken requiringSecureCoding:1 error:&v10];
  v6 = v10;
  if (![v5 length])
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ef_publicDescription = [v6 ef_publicDescription];
      sub_10048C1C4(ef_publicDescription, buf, v7);
    }
  }

  return v5;
}

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  if (![valueCopy length])
  {
    goto LABEL_8;
  }

  v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:valueCopy error:0];
  v14 = 0;
  v5 = [v4 decodeTopLevelObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey error:&v14];
  v6 = v14;
  v7 = [[MUISuggestionToken alloc] initWithCSToken:v5];
  v8 = v7;
  if (v7)
  {
    image = [v7 image];
    title = [v8 title];
    v11 = [UISearchToken tokenWithIcon:image text:title];

    [v11 setRepresentedObject:v8];
  }

  else
  {
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      ef_publicDescription = [v6 ef_publicDescription];
      sub_10048C21C(ef_publicDescription, buf, v11);
    }
  }

  if (!v8)
  {
LABEL_8:
    v11 = 0;
  }

  return v11;
}

@end