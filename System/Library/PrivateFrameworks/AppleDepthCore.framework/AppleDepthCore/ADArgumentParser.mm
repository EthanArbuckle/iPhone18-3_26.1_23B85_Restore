@interface ADArgumentParser
- (BOOL)parse;
- (BOOL)parseArguments:(id)arguments;
- (BOOL)parseStringCommand:(id)command;
@end

@implementation ADArgumentParser

- (BOOL)parseArguments:(id)arguments
{
  argumentsCopy = arguments;
  [(ADArgumentParserCommand *)self setDescriptionString:self->_programDescription];
  v5 = [argumentsCopy objectAtIndexedSubscript:0];
  lastPathComponent = [v5 lastPathComponent];
  [(ADArgumentParserCommand *)self setName:lastPathComponent];

  if (![(ADArgumentParserCommand *)self verifyCommandStructure])
  {
    puts("found error in command tree structure. stopping");
    __assert_rtn("[ADArgumentParser parseArguments:]", "ADArgumentParser.mm", 51, "false");
  }

  v7 = [(ADArgumentParserCommand *)self commandParse:argumentsCopy commandIndex:0];

  return v7;
}

- (BOOL)parseStringCommand:(id)command
{
  v4 = [command componentsSeparatedByString:@" "];
  LOBYTE(self) = [(ADArgumentParser *)self parseArguments:v4];

  return self;
}

- (BOOL)parse
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  arguments = [processInfo arguments];
  LOBYTE(self) = [(ADArgumentParser *)self parseArguments:arguments];

  return self;
}

@end