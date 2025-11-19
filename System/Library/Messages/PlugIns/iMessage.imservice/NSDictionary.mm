@interface NSDictionary
- (id)_copyiMessageDictionaryForLogging;
@end

@implementation NSDictionary

- (id)_copyiMessageDictionaryForLogging
{
  v2 = [(NSDictionary *)self mutableCopy];
  v3 = [v2 objectForKey:@"IDSIncomingMessageDecryptedData"];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [v2 objectForKey:@"IDSIncomingMessageDecryptedData"];
    v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<data of length %lu>", [v5 length]);

    [v2 setObject:v6 forKey:@"IDSIncomingMessageDecryptedData"];
  }

  return v2;
}

@end