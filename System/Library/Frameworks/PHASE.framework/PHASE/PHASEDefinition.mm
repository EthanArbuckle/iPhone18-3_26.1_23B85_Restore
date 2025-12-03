@interface PHASEDefinition
- (PHASEDefinition)init;
- (id)initInternal;
- (void)setIdentifier:(id)identifier;
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
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = uUIDString;

    v6 = v2;
  }

  return v2;
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    objc_storeStrong(&self->_identifier, identifier);
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:@"API Misuse" format:@"Cannot set a UID of nil for a PHASEDefinition"];
  }
}

@end