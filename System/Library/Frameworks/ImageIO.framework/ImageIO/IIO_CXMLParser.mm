@interface IIO_CXMLParser
+ (id)dictionaryForXMLData:(id)data error:(id *)error;
- (IIO_CXMLParser)initWithError:(id *)error;
- (id)initializeWithData:(id)data;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCharacters:(id)characters;
- (void)parser:(id)parser parseErrorOccurred:(id)occurred;
@end

@implementation IIO_CXMLParser

+ (id)dictionaryForXMLData:(id)data error:(id *)error
{
  v5 = [[IIO_CXMLParser alloc] initWithError:error];

  return [(IIO_CXMLParser *)v5 initializeWithData:data];
}

- (IIO_CXMLParser)initWithError:(id *)error
{
  v5.receiver = self;
  v5.super_class = IIO_CXMLParser;
  result = [(IIO_CXMLParser *)&v5 init];
  if (result)
  {
    result->_errorPointer = error;
  }

  return result;
}

- (id)initializeWithData:(id)data
{
  self->_dictionaryStack = objc_alloc_init(MEMORY[0x1E695DF70]);
  self->_textInProgress = objc_alloc_init(MEMORY[0x1E696AD60]);
  -[NSMutableArray addObject:](self->_dictionaryStack, "addObject:", [MEMORY[0x1E695DF90] dictionary]);
  v5 = [objc_alloc(MEMORY[0x1E696B0A8]) initWithData:data];
  [v5 setDelegate:self];
  if ([v5 parse])
  {
    return [(NSMutableArray *)self->_dictionaryStack objectAtIndex:0];
  }

  else
  {
    return 0;
  }
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  elementCopy = element;
  v10 = [(NSMutableArray *)self->_dictionaryStack lastObject:parser];
  if ([elementCopy hasPrefix:@"ofd:"])
  {
    elementCopy = [elementCopy substringFromIndex:4];
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary addEntriesFromDictionary:attributes];
  v12 = [v10 objectForKey:elementCopy];
  if (v12)
  {
    v13 = v12;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      array = [MEMORY[0x1E695DF70] array];
      [array addObject:v13];
      [v10 setObject:array forKey:elementCopy];
      v13 = array;
    }

    [v13 addObject:dictionary];
  }

  else
  {
    [v10 setObject:dictionary forKey:elementCopy];
  }

  dictionaryStack = self->_dictionaryStack;

  [(NSMutableArray *)dictionaryStack addObject:dictionary];
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  elementCopy = element;
  v8 = [(NSMutableArray *)self->_dictionaryStack lastObject:parser];
  if ([elementCopy hasPrefix:@"ofd:"])
  {
    elementCopy = [elementCopy substringFromIndex:4];
  }

  if ([(NSMutableString *)self->_textInProgress length])
  {
    [v8 setObject:self->_textInProgress forKey:@"_text"];
    [(NSMutableArray *)self->_dictionaryStack removeLastObject];
    lastObject = [(NSMutableArray *)self->_dictionaryStack lastObject];
    if ([objc_msgSend(lastObject objectForKey:{elementCopy), "count"}] == 1)
    {
      [lastObject setObject:self->_textInProgress forKey:elementCopy];
    }

    self->_textInProgress = objc_alloc_init(MEMORY[0x1E696AD60]);
  }

  else
  {
    dictionaryStack = self->_dictionaryStack;

    [(NSMutableArray *)dictionaryStack removeLastObject];
  }
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  v5 = [characters stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet", parser)}];
  textInProgress = self->_textInProgress;

  [(NSMutableString *)textInProgress appendString:v5];
}

- (void)parser:(id)parser parseErrorOccurred:(id)occurred
{
  errorPointer = self->_errorPointer;
  if (errorPointer)
  {
    *errorPointer = occurred;
  }

  [parser abortParsing];
  v6 = MEMORY[0x1E695DF30];
  if (occurred)
  {
    v7 = [objc_msgSend(occurred "userInfo")];
  }

  else
  {
    v7 = @"failed to parse input data";
  }

  objc_exception_throw([v6 exceptionWithName:@"XML-parsing error" reason:v7 userInfo:0]);
}

@end