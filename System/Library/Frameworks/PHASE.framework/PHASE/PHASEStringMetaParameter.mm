@interface PHASEStringMetaParameter
- (PHASEStringMetaParameter)init;
- (PHASEStringMetaParameter)initWithUID:(id)d delegate:(id)delegate;
- (PHASEStringMetaParameter)initWithUID:(id)d value:(id)value delegate:(id)delegate;
@end

@implementation PHASEStringMetaParameter

- (PHASEStringMetaParameter)init
{
  [(PHASEStringMetaParameter *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEStringMetaParameter)initWithUID:(id)d delegate:(id)delegate
{
  [(PHASEStringMetaParameter *)self doesNotRecognizeSelector:a2, delegate];

  return 0;
}

- (PHASEStringMetaParameter)initWithUID:(id)d value:(id)value delegate:(id)delegate
{
  dCopy = d;
  valueCopy = value;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = PHASEStringMetaParameter;
  v11 = [(PHASEMetaParameter *)&v15 initWithUID:dCopy delegate:delegateCopy];
  v12 = v11;
  if (v11)
  {
    [(PHASEMetaParameter *)v11 setValue:valueCopy];
    v13 = v12;
  }

  return v12;
}

@end