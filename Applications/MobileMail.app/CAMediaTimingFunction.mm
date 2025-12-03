@interface CAMediaTimingFunction
+ (id)mf_functionWithName:(id)name;
@end

@implementation CAMediaTimingFunction

+ (id)mf_functionWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"MediaTimingFunctionMailMagic"])
  {
    LODWORD(v5) = 1046804326;
    LODWORD(v6) = 990057071;
    LODWORD(v7) = 1057860511;
    LODWORD(v8) = 1064563009;
    [self functionWithControlPoints:v5 :v6 :v7 :v8];
  }

  else
  {
    [self functionWithName:nameCopy];
  }
  v9 = ;

  return v9;
}

@end