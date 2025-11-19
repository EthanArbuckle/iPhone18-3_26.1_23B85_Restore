@interface AXMIDIDeviceEntityEndpoint
- (AXMIDIDeviceEntity)entity;
- (AXMIDIDeviceEntityEndpoint)initWithMIDIEndpoint:(unsigned int)a3 entity:(id)a4;
- (id)description;
@end

@implementation AXMIDIDeviceEntityEndpoint

- (AXMIDIDeviceEntityEndpoint)initWithMIDIEndpoint:(unsigned int)a3 entity:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = AXMIDIDeviceEntityEndpoint;
  v7 = [(AXMIDIDeviceEntityEndpoint *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_entity, v6);
    v8->_midiEndpoint = a3;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AXMIDIDeviceEntityEndpoint *)self entity];
  v5 = [v3 stringWithFormat:@"<AXMIDIDeviceEntityEndpoint:%p parent:%@>", self, v4];

  return v5;
}

- (AXMIDIDeviceEntity)entity
{
  WeakRetained = objc_loadWeakRetained(&self->_entity);

  return WeakRetained;
}

@end