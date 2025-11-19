@interface ADArgumentParser
- (BOOL)parse;
- (BOOL)parseArguments:(id)a3;
- (BOOL)parseStringCommand:(id)a3;
@end

@implementation ADArgumentParser

- (BOOL)parseArguments:(id)a3
{
  v4 = a3;
  [(ADArgumentParserCommand *)self setDescriptionString:self->_programDescription];
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v5 lastPathComponent];
  [(ADArgumentParserCommand *)self setName:v6];

  if (![(ADArgumentParserCommand *)self verifyCommandStructure])
  {
    puts("found error in command tree structure. stopping");
    __assert_rtn("[ADArgumentParser parseArguments:]", "ADArgumentParser.mm", 51, "false");
  }

  v7 = [(ADArgumentParserCommand *)self commandParse:v4 commandIndex:0];

  return v7;
}

- (BOOL)parseStringCommand:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@" "];
  LOBYTE(self) = [(ADArgumentParser *)self parseArguments:v4];

  return self;
}

- (BOOL)parse
{
  v3 = [MEMORY[0x277CCAC38] processInfo];
  v4 = [v3 arguments];
  LOBYTE(self) = [(ADArgumentParser *)self parseArguments:v4];

  return self;
}

@end