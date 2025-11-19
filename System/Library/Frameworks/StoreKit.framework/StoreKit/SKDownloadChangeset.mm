@interface SKDownloadChangeset
+ (id)changesetWithDownloadID:(id)a3 state:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SKDownloadChangeset

+ (id)changesetWithDownloadID:(id)a3 state:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(SKDownloadChangeset);
  [(SKDownloadChangeset *)v6 setDownloadID:v5];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(SKDownloadChangeset *)v6 setDownloadState:v7];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSNumber *)self->_contentLength copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSURL *)self->_contentURL copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSNumber *)self->_downloadID copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSNumber *)self->_downloadState copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSError *)self->_error copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(NSNumber *)self->_progress copyWithZone:a3];
  v17 = v5[6];
  v5[6] = v16;

  v18 = [(NSNumber *)self->_timeRemaining copyWithZone:a3];
  v19 = v5[7];
  v5[7] = v18;

  return v5;
}

@end