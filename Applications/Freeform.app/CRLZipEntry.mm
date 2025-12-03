@interface CRLZipEntry
- (id)description;
@end

@implementation CRLZipEntry

- (id)description
{
  v3 = sub_1000FAF64(self);
  name = [(CRLZipEntry *)self name];
  collapsedName = [(CRLZipEntry *)self collapsedName];
  v6 = [NSString stringWithFormat:@"<%@> %@ (%@) size=%qu compressedSize=%qu CRC=0x%X offset=%qu extraFieldLength=%hu", v3, name, collapsedName, [(CRLZipEntry *)self size], [(CRLZipEntry *)self compressedSize], [(CRLZipEntry *)self CRC], [(CRLZipEntry *)self offset], [(CRLZipEntry *)self extraFieldsLength]];

  return v6;
}

@end