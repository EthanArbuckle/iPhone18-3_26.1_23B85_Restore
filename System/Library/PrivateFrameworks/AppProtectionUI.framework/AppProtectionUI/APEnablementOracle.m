@interface APEnablementOracle
+ (id)sharedInstance;
- (APEnablementOracle)init;
- (BOOL)canEnablementAction:(unint64_t)a3 bePerformedForFeature:(unint64_t)a4 ofSubject:(id)a5;
- (BOOL)getPreferredEnablementAction:(unint64_t *)a3 preferredEnableableFeature:(unint64_t *)a4 forSubject:(id)a5 error:(id *)a6;
@end

@implementation APEnablementOracle

- (APEnablementOracle)init
{
  v3.receiver = self;
  v3.super_class = APEnablementOracle;
  return [(APEnablementOracle *)&v3 init];
}

+ (id)sharedInstance
{
  if (qword_1EDAC2C60 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDAC2C68;

  return v3;
}

- (BOOL)getPreferredEnablementAction:(unint64_t *)a3 preferredEnableableFeature:(unint64_t *)a4 forSubject:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = self;
  sub_1AEA19F98(a3, a4, v9);

  return 1;
}

- (BOOL)canEnablementAction:(unint64_t)a3 bePerformedForFeature:(unint64_t)a4 ofSubject:(id)a5
{
  v8 = a5;
  v9 = self;
  LOBYTE(a4) = sub_1AEA31AA8(a3, a4, v8);

  return a4 & 1;
}

@end