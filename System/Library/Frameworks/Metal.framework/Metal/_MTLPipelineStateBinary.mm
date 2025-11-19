@interface _MTLPipelineStateBinary
- (_MTLPipelineStateBinary)initWithBinary:(id)a3 uniqueIdentifier:(unint64_t)a4;
- (_MTLPipelineStateBinary)initWithBinary:(id)a3 uniqueIdentifier:(unint64_t)a4 debugIdentifier:(unint64_t)a5;
- (void)dealloc;
@end

@implementation _MTLPipelineStateBinary

- (_MTLPipelineStateBinary)initWithBinary:(id)a3 uniqueIdentifier:(unint64_t)a4
{
  self->_binary = a3;
  self->_uniqueIdentifier = a4;
  return self;
}

- (_MTLPipelineStateBinary)initWithBinary:(id)a3 uniqueIdentifier:(unint64_t)a4 debugIdentifier:(unint64_t)a5
{
  self->_binary = a3;
  self->_uniqueIdentifier = a4;
  self->_debugIdentifier = a5;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MTLPipelineStateBinary;
  [(_MTLPipelineStateBinary *)&v3 dealloc];
}

@end