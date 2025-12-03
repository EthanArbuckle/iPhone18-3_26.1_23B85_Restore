@interface ASDGatherLogsRequestOptions
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ASDGatherLogsRequestOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ASDGatherLogsRequestOptions allocWithZone:?]];
  v5 = [(NSString *)self->_fileName copy];
  fileName = v4->_fileName;
  v4->_fileName = v5;

  v4->_verbose = self->_verbose;
  v7 = [(NSArray *)self->_urlFilters copy];
  urlFilters = v4->_urlFilters;
  v4->_urlFilters = v7;

  return v4;
}

@end