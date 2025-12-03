@interface XMLParser
+ (id)copyDictionaryForXMLData:(id)data error:(id *)error;
+ (id)copyDictionaryForXMLString:(id)string error:(id *)error;
- (XMLParser)initWithError:(id *)error;
- (id)objectWithData:(id)data;
- (void)dealloc;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCharacters:(id)characters;
@end

@implementation XMLParser

+ (id)copyDictionaryForXMLData:(id)data error:(id *)error
{
  v6 = objc_autoreleasePoolPush();
  v7 = [[[XMLParser alloc] initWithError:error] objectWithData:data];
  objc_autoreleasePoolPop(v6);
  return v7;
}

+ (id)copyDictionaryForXMLString:(id)string error:(id *)error
{
  v6 = objc_autoreleasePoolPush();
  v7 = +[XMLParser copyDictionaryForXMLData:error:](XMLParser, "copyDictionaryForXMLData:error:", [string dataUsingEncoding:4], error);
  objc_autoreleasePoolPop(v6);
  return v7;
}

- (XMLParser)initWithError:(id *)error
{
  v5.receiver = self;
  v5.super_class = XMLParser;
  result = [(XMLParser *)&v5 init];
  if (result)
  {
    result->errorPointer = error;
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

- (id)objectWithData:(id)data
{
  [(XMLParser *)self setDictionaryStack:objc_opt_new()];
  [(XMLParser *)self setTextInProgress:objc_opt_new()];
  [(NSMutableArray *)[(XMLParser *)self dictionaryStack] addObject:+[NSMutableDictionary dictionary]];
  v5 = [[NSXMLParser alloc] initWithData:data];
  [v5 setDelegate:self];
  if (![v5 parse])
  {
    return 0;
  }

  dictionaryStack = [(XMLParser *)self dictionaryStack];

  return [(NSMutableArray *)dictionaryStack objectAtIndex:0];
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  lastObject = [(NSMutableArray *)[(XMLParser *)self dictionaryStack:parser] lastObject];
  v11 = +[NSMutableDictionary dictionary];
  [v11 addEntriesFromDictionary:attributes];
  v12 = [lastObject objectForKey:element];
  if (v12)
  {
    v13 = v12;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = +[NSMutableArray array];
      [v14 addObject:v13];
      [lastObject setObject:v14 forKey:element];
      v13 = v14;
    }

    [v13 addObject:v11];
  }

  else
  {
    [lastObject setObject:v11 forKey:element];
  }

  dictionaryStack = [(XMLParser *)self dictionaryStack];

  [(NSMutableArray *)dictionaryStack addObject:v11];
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  lastObject = [(NSMutableArray *)[(XMLParser *)self dictionaryStack:parser] lastObject];
  if ([(NSMutableString *)[(XMLParser *)self textInProgress] length])
  {
    [lastObject setObject:-[XMLParser textInProgress](self forKey:{"textInProgress"), @"text"}];
    [(XMLParser *)self setTextInProgress:objc_opt_new()];
  }

  dictionaryStack = [(XMLParser *)self dictionaryStack];

  [(NSMutableArray *)dictionaryStack removeLastObject];
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  textInProgress = [(XMLParser *)self textInProgress];

  [(NSMutableString *)textInProgress setString:characters];
}

@end