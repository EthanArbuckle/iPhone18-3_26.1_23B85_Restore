@interface NSCodableAttributeDescription
- (NSCodableAttributeDescription)init;
- (id)decode:(id)decode withRegistry:(id)registry error:(id *)error;
- (id)encode:(id)encode withRegistry:(id)registry error:(id *)error;
@end

@implementation NSCodableAttributeDescription

- (NSCodableAttributeDescription)init
{
  v5.receiver = self;
  v5.super_class = NSCodableAttributeDescription;
  v2 = [(NSPropertyDescription *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NSAttributeDescription *)v2 setAttributeType:2200];
  }

  return v3;
}

- (id)encode:(id)encode withRegistry:(id)registry error:(id *)error
{
  v8 = 0;
  v6 = [registry encodeWithValue:encode withAdapterNamed:-[NSAttributeDescription valueTransformerName](self error:{"valueTransformerName"), &v8}];
  if (!v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_msgSend(v8 "exception")];
    }
  }

  if (error)
  {
    *error = v8;
  }

  return v6;
}

- (id)decode:(id)decode withRegistry:(id)registry error:(id *)error
{
  v8 = 0;
  v6 = [registry decodeWithData:decode withAdapterNamed:-[NSAttributeDescription valueTransformerName](self error:{"valueTransformerName"), &v8}];
  if (!v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_msgSend(v8 "exception")];
    }
  }

  if (error)
  {
    *error = v8;
  }

  return v6;
}

@end