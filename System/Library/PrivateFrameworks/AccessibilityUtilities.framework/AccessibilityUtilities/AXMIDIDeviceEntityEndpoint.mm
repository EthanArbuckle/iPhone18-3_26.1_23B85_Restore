@interface AXMIDIDeviceEntityEndpoint
- (AXMIDIDeviceEntity)entity;
- (AXMIDIDeviceEntityEndpoint)initWithMIDIEndpoint:(unsigned int)endpoint entity:(id)entity;
- (id)description;
@end

@implementation AXMIDIDeviceEntityEndpoint

- (AXMIDIDeviceEntityEndpoint)initWithMIDIEndpoint:(unsigned int)endpoint entity:(id)entity
{
  entityCopy = entity;
  v10.receiver = self;
  v10.super_class = AXMIDIDeviceEntityEndpoint;
  v7 = [(AXMIDIDeviceEntityEndpoint *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_entity, entityCopy);
    v8->_midiEndpoint = endpoint;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  entity = [(AXMIDIDeviceEntityEndpoint *)self entity];
  v5 = [v3 stringWithFormat:@"<AXMIDIDeviceEntityEndpoint:%p parent:%@>", self, entity];

  return v5;
}

- (AXMIDIDeviceEntity)entity
{
  WeakRetained = objc_loadWeakRetained(&self->_entity);

  return WeakRetained;
}

@end