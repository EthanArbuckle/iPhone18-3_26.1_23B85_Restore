@interface DAButtonParameters
- (DAButtonParameters)initWithDictionary:(id)a3;
@end

@implementation DAButtonParameters

- (DAButtonParameters)initWithDictionary:(id)a3
{
  v4 = a3;
  v13 = 0;
  v12.receiver = self;
  v12.super_class = DAButtonParameters;
  v5 = [(DAParameters *)&v12 initWithDictionary:v4];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [NSSet setWithObject:objc_opt_class()];
    v8 = [v4 dk_arrayFromRequiredKey:@"segments" types:v7 maxLength:100 failed:&v13];

    v9 = [(DASpecification *)DAButtonSegment specificationFromArray:v8];
    segments = v6->_segments;
    v6->_segments = v9;
  }

  if (!v6->_segments || v13 == 1)
  {

    v6 = 0;
  }

  return v6;
}

@end