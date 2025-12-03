@interface _MTLPipelineStateBinary
- (_MTLPipelineStateBinary)initWithBinary:(id)binary uniqueIdentifier:(unint64_t)identifier;
- (_MTLPipelineStateBinary)initWithBinary:(id)binary uniqueIdentifier:(unint64_t)identifier debugIdentifier:(unint64_t)debugIdentifier;
- (void)dealloc;
@end

@implementation _MTLPipelineStateBinary

- (_MTLPipelineStateBinary)initWithBinary:(id)binary uniqueIdentifier:(unint64_t)identifier
{
  self->_binary = binary;
  self->_uniqueIdentifier = identifier;
  return self;
}

- (_MTLPipelineStateBinary)initWithBinary:(id)binary uniqueIdentifier:(unint64_t)identifier debugIdentifier:(unint64_t)debugIdentifier
{
  self->_binary = binary;
  self->_uniqueIdentifier = identifier;
  self->_debugIdentifier = debugIdentifier;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MTLPipelineStateBinary;
  [(_MTLPipelineStateBinary *)&v3 dealloc];
}

@end