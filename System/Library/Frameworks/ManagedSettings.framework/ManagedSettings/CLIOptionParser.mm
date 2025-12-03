@interface CLIOptionParser
+ (CLIOptionParser)optionParserWithArguments:(id)arguments forCommand:(id)command;
- (BOOL)enumerateOptionsWithBlock:(id)block;
- (id)dictionaryWithOptionsAndValues;
- (id)nextArgument;
- (void)finishArguments;
- (void)validateArguments;
@end

@implementation CLIOptionParser

+ (CLIOptionParser)optionParserWithArguments:(id)arguments forCommand:(id)command
{
  commandCopy = command;
  argumentsCopy = arguments;
  v7 = sub_100007214([CLIOptionParser alloc], argumentsCopy, commandCopy);

  return v7;
}

- (BOOL)enumerateOptionsWithBlock:(id)block
{
  blockCopy = block;
  if (self->_optind >= 2)
  {
    sub_1000076E4();
  }

  v18 = v20;
  while (1)
  {
    nextArgument = [(CLIOptionParser *)self nextArgument];
    if (([nextArgument hasPrefix:@"--"] & 1) == 0)
    {
      break;
    }

    if ([nextArgument isEqualToString:@"--"])
    {
      goto LABEL_16;
    }

    v6 = [nextArgument substringFromIndex:2];
    v7 = [(NSMutableDictionary *)self->_optionSet->_longAliasToOptionDict objectForKeyedSubscript:v6];
    parameterCount = [v7 parameterCount];
    if (!v7)
    {
LABEL_20:
      sub_1000053EC(self, nextArgument);
LABEL_21:
      sub_10000544C(self, nextArgument);
      sub_100005708(v16, v17);
      return result;
    }

    if (parameterCount)
    {
      nextArgument2 = [(CLIOptionParser *)self nextArgument];
      if (!nextArgument2)
      {
        goto LABEL_21;
      }
    }

    else
    {
      nextArgument2 = 0;
    }

    shortName = [v7 shortName];
    longName = [v7 longName];
    blockCopy[2](blockCopy, shortName, longName, nextArgument2);

LABEL_15:
  }

  if ([nextArgument hasPrefix:@"-"])
  {
    v10 = [nextArgument length];
    v11 = v10 - 1;
    if (v10 == 1)
    {
      goto LABEL_20;
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v20[0] = sub_100005708;
    v20[1] = &unk_10000C568;
    v20[2] = self;
    v12 = nextArgument;
    v21 = v12;
    v22 = blockCopy;
    [v12 enumerateSubstringsInRange:1 options:v11 usingBlock:{2, v19}];

    goto LABEL_15;
  }

LABEL_16:
  if (self)
  {
    if (nextArgument)
    {
      --qword_1000115B8;
      --self->_optind;
    }
  }

  return 1;
}

- (id)dictionaryWithOptionsAndValues
{
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_1000058BC;
  v9 = &unk_10000C590;
  v10 = objc_opt_new();
  selfCopy = self;
  v3 = v10;
  [(CLIOptionParser *)self enumerateOptionsWithBlock:&v6];
  v4 = [v3 copy];

  return v4;
}

- (id)nextArgument
{
  optind = self->_optind;
  if (optind >= [(NSArray *)self->_arguments count])
  {
    v5 = 0;
  }

  else
  {
    ++qword_1000115B8;
    arguments = self->_arguments;
    ++self->_optind;
    v5 = [(NSArray *)arguments objectAtIndex:?];
  }

  return v5;
}

- (void)finishArguments
{
  nextArgument = [(CLIOptionParser *)self nextArgument];
  if (nextArgument)
  {
    sub_1000053EC(self, nextArgument);
    [(CLIOptionParser *)v4 validateArguments];
  }
}

- (void)validateArguments
{
  v3 = qword_1000115B8;
  [(CLIOptionParser *)self enumerateOptionsWithBlock:&stru_10000C5D0];
  qword_1000115B8 = v3;
  self->_optind = 1;
}

@end