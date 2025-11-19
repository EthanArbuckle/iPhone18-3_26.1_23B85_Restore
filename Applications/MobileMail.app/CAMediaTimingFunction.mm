@interface CAMediaTimingFunction
+ (id)mf_functionWithName:(id)a3;
@end

@implementation CAMediaTimingFunction

+ (id)mf_functionWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"MediaTimingFunctionMailMagic"])
  {
    LODWORD(v5) = 1046804326;
    LODWORD(v6) = 990057071;
    LODWORD(v7) = 1057860511;
    LODWORD(v8) = 1064563009;
    [a1 functionWithControlPoints:v5 :v6 :v7 :v8];
  }

  else
  {
    [a1 functionWithName:v4];
  }
  v9 = ;

  return v9;
}

@end