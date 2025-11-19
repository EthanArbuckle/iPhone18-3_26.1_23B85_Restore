@interface NSCodableAttributeDescription
- (NSCodableAttributeDescription)init;
- (id)decode:(id)a3 withRegistry:(id)a4 error:(id *)a5;
- (id)encode:(id)a3 withRegistry:(id)a4 error:(id *)a5;
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

- (id)encode:(id)a3 withRegistry:(id)a4 error:(id *)a5
{
  v8 = 0;
  v6 = [a4 encodeWithValue:a3 withAdapterNamed:-[NSAttributeDescription valueTransformerName](self error:{"valueTransformerName"), &v8}];
  if (!v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_msgSend(v8 "exception")];
    }
  }

  if (a5)
  {
    *a5 = v8;
  }

  return v6;
}

- (id)decode:(id)a3 withRegistry:(id)a4 error:(id *)a5
{
  v8 = 0;
  v6 = [a4 decodeWithData:a3 withAdapterNamed:-[NSAttributeDescription valueTransformerName](self error:{"valueTransformerName"), &v8}];
  if (!v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_msgSend(v8 "exception")];
    }
  }

  if (a5)
  {
    *a5 = v8;
  }

  return v6;
}

@end