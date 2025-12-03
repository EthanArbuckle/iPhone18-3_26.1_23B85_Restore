@interface SKDownloadChangeset
+ (id)changesetWithDownloadID:(id)d state:(int64_t)state;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SKDownloadChangeset

+ (id)changesetWithDownloadID:(id)d state:(int64_t)state
{
  dCopy = d;
  v6 = objc_alloc_init(SKDownloadChangeset);
  [(SKDownloadChangeset *)v6 setDownloadID:dCopy];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  [(SKDownloadChangeset *)v6 setDownloadState:v7];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSNumber *)self->_contentLength copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSURL *)self->_contentURL copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSNumber *)self->_downloadID copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSNumber *)self->_downloadState copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSError *)self->_error copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(NSNumber *)self->_progress copyWithZone:zone];
  v17 = v5[6];
  v5[6] = v16;

  v18 = [(NSNumber *)self->_timeRemaining copyWithZone:zone];
  v19 = v5[7];
  v5[7] = v18;

  return v5;
}

@end