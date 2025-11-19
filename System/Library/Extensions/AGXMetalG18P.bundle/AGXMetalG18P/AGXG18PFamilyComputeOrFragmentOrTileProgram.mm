@interface AGXG18PFamilyComputeOrFragmentOrTileProgram
- (void)dealloc;
@end

@implementation AGXG18PFamilyComputeOrFragmentOrTileProgram

- (void)dealloc
{
  self->_compute = 0;

  self->_frag = 0;
  self->_tile = 0;
  v3.receiver = self;
  v3.super_class = AGXG18PFamilyComputeOrFragmentOrTileProgram;
  [(AGXG18PFamilyComputeOrFragmentOrTileProgram *)&v3 dealloc];
}

@end