@interface AEMinimalTemplateSet
+ (id)templateSet;
- (AEMinimalTemplateSet)init;
- (id)evaluateTemplateWithName:(id)name withData:(id)data error:(id *)error;
@end

@implementation AEMinimalTemplateSet

+ (id)templateSet
{
  v2 = objc_alloc_init(AEMinimalTemplateSet);

  return v2;
}

- (AEMinimalTemplateSet)init
{
  v6.receiver = self;
  v6.super_class = AEMinimalTemplateSet;
  v2 = [(AEMinimalTemplateSet *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    templates = v2->_templates;
    v2->_templates = v3;
  }

  return v2;
}

- (id)evaluateTemplateWithName:(id)name withData:(id)data error:(id *)error
{
  nameCopy = name;
  dataCopy = data;
  v10 = [(NSMutableDictionary *)self->_templates objectForKey:nameCopy];
  if (v10)
  {
    nameCopy = +[NSCountedSet set];
    error = [v10 evaluateWithData:dataCopy templateSet:self cycleContext:nameCopy error:error];
  }

  else
  {
    if (!error)
    {
      goto LABEL_6;
    }

    nameCopy = [NSString stringWithFormat:@"No such template '%@'", nameCopy];
    v12 = [NSDictionary dictionaryWithObjectsAndKeys:nameCopy, NSLocalizedDescriptionKey, nameCopy, @"name", 0];
    *error = [NSError errorWithDomain:@"AEMinimalTemplateErrorDomain" code:5 userInfo:v12];

    error = 0;
  }

LABEL_6:

  return error;
}

@end