@interface CoordinatorPromiseSpecification
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CoordinatorPromiseSpecification

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[2] = self->_archiveSize;
  v5[3] = self->_diskSpaceNeeded;
  v6 = [(MILocationProtocol *)self->_location copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_name copyWithZone:zone];
  v9 = v5[5];
  v5[5] = v8;

  v5[6] = self->_promiseType;
  v10 = [(NSDictionary *)self->_streamingZipOptions copyWithZone:zone];
  v11 = v5[8];
  v5[8] = v10;

  *(v5 + 8) = self->_fastExtraction;
  return v5;
}

@end