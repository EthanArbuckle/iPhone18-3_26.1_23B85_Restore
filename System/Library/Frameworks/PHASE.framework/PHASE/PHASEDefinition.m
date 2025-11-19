@interface PHASEDefinition
- (PHASEDefinition)init;
- (id)initInternal;
- (void)setIdentifier:(id)a3;
@end

@implementation PHASEDefinition

- (PHASEDefinition)init
{
  [(PHASEDefinition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)initInternal
{
  v8.receiver = self;
  v8.super_class = PHASEDefinition;
  v2 = [(PHASEDefinition *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    v4 = [v3 UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = v4;

    v6 = v2;
  }

  return v2;
}

- (void)setIdentifier:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_storeStrong(&self->_identifier, a3);
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:@"API Misuse" format:@"Cannot set a UID of nil for a PHASEDefinition"];
  }
}

@end