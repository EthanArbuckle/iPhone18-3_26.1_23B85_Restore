@interface XMLParser
+ (id)copyDictionaryForXMLData:(id)a3 error:(id *)a4;
+ (id)copyDictionaryForXMLString:(id)a3 error:(id *)a4;
- (XMLParser)initWithError:(id *)a3;
- (id)objectWithData:(id)a3;
- (void)dealloc;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parser:(id)a3 foundCharacters:(id)a4;
@end

@implementation XMLParser

+ (id)copyDictionaryForXMLData:(id)a3 error:(id *)a4
{
  v6 = objc_autoreleasePoolPush();
  v7 = [[[XMLParser alloc] initWithError:a4] objectWithData:a3];
  objc_autoreleasePoolPop(v6);
  return v7;
}

+ (id)copyDictionaryForXMLString:(id)a3 error:(id *)a4
{
  v6 = objc_autoreleasePoolPush();
  v7 = +[XMLParser copyDictionaryForXMLData:error:](XMLParser, "copyDictionaryForXMLData:error:", [a3 dataUsingEncoding:4], a4);
  objc_autoreleasePoolPop(v6);
  return v7;
}

- (XMLParser)initWithError:(id *)a3
{
  v5.receiver = self;
  v5.super_class = XMLParser;
  result = [(XMLParser *)&v5 init];
  if (result)
  {
    result->errorPointer = a3;
  }

  return result;
}

- (void)dealloc
{
  [(XMLParser *)self setDictionaryStack:0];
  [(XMLParser *)self setTextInProgress:0];
  v3.receiver = self;
  v3.super_class = XMLParser;
  [(XMLParser *)&v3 dealloc];
}

- (id)objectWithData:(id)a3
{
  [(XMLParser *)self setDictionaryStack:objc_opt_new()];
  [(XMLParser *)self setTextInProgress:objc_opt_new()];
  [(NSMutableArray *)[(XMLParser *)self dictionaryStack] addObject:+[NSMutableDictionary dictionary]];
  v5 = [[NSXMLParser alloc] initWithData:a3];
  [v5 setDelegate:self];
  if (![v5 parse])
  {
    return 0;
  }

  v6 = [(XMLParser *)self dictionaryStack];

  return [(NSMutableArray *)v6 objectAtIndex:0];
}

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v10 = [(NSMutableArray *)[(XMLParser *)self dictionaryStack:a3] lastObject];
  v11 = +[NSMutableDictionary dictionary];
  [v11 addEntriesFromDictionary:a7];
  v12 = [v10 objectForKey:a4];
  if (v12)
  {
    v13 = v12;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = +[NSMutableArray array];
      [v14 addObject:v13];
      [v10 setObject:v14 forKey:a4];
      v13 = v14;
    }

    [v13 addObject:v11];
  }

  else
  {
    [v10 setObject:v11 forKey:a4];
  }

  v15 = [(XMLParser *)self dictionaryStack];

  [(NSMutableArray *)v15 addObject:v11];
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  v7 = [(NSMutableArray *)[(XMLParser *)self dictionaryStack:a3] lastObject];
  if ([(NSMutableString *)[(XMLParser *)self textInProgress] length])
  {
    [v7 setObject:-[XMLParser textInProgress](self forKey:{"textInProgress"), @"text"}];
    [(XMLParser *)self setTextInProgress:objc_opt_new()];
  }

  v8 = [(XMLParser *)self dictionaryStack];

  [(NSMutableArray *)v8 removeLastObject];
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v5 = [(XMLParser *)self textInProgress];

  [(NSMutableString *)v5 setString:a4];
}

@end