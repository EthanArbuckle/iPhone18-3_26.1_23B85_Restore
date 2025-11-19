@interface CoordinatorPromiseSpecification
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CoordinatorPromiseSpecification

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[2] = self->_archiveSize;
  v5[3] = self->_diskSpaceNeeded;
  v6 = [(MILocationProtocol *)self->_location copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_name copyWithZone:a3];
  v9 = v5[5];
  v5[5] = v8;

  v5[6] = self->_promiseType;
  v10 = [(NSDictionary *)self->_streamingZipOptions copyWithZone:a3];
  v11 = v5[8];
  v5[8] = v10;

  *(v5 + 8) = self->_fastExtraction;
  return v5;
}

@end