@interface PHASEStringMetaParameter
- (PHASEStringMetaParameter)init;
- (PHASEStringMetaParameter)initWithUID:(id)a3 delegate:(id)a4;
- (PHASEStringMetaParameter)initWithUID:(id)a3 value:(id)a4 delegate:(id)a5;
@end

@implementation PHASEStringMetaParameter

- (PHASEStringMetaParameter)init
{
  [(PHASEStringMetaParameter *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEStringMetaParameter)initWithUID:(id)a3 delegate:(id)a4
{
  [(PHASEStringMetaParameter *)self doesNotRecognizeSelector:a2, a4];

  return 0;
}

- (PHASEStringMetaParameter)initWithUID:(id)a3 value:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = PHASEStringMetaParameter;
  v11 = [(PHASEMetaParameter *)&v15 initWithUID:v8 delegate:v10];
  v12 = v11;
  if (v11)
  {
    [(PHASEMetaParameter *)v11 setValue:v9];
    v13 = v12;
  }

  return v12;
}

@end