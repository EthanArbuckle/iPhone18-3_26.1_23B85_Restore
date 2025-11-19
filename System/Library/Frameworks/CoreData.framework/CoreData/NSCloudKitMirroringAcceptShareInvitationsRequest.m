@interface NSCloudKitMirroringAcceptShareInvitationsRequest
- (NSCloudKitMirroringAcceptShareInvitationsRequest)initWithOptions:(id)a3 completionBlock:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
@end

@implementation NSCloudKitMirroringAcceptShareInvitationsRequest

- (NSCloudKitMirroringAcceptShareInvitationsRequest)initWithOptions:(id)a3 completionBlock:(id)a4
{
  v6.receiver = self;
  v6.super_class = NSCloudKitMirroringAcceptShareInvitationsRequest;
  v4 = [(NSCloudKitMirroringRequest *)&v6 initWithOptions:a3 completionBlock:a4];
  if (v4)
  {
    v4->_shareURLsToAccept = NSArray_EmptyArray;
    v4->_shareMetadatasToAccept = NSArray_EmptyArray;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringAcceptShareInvitationsRequest;
  [(NSCloudKitMirroringRequest *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v7.receiver = self;
  v7.super_class = NSCloudKitMirroringAcceptShareInvitationsRequest;
  v4 = [-[NSCloudKitMirroringRequest description](&v7 description)];
  shareURLsToAccept = self->_shareURLsToAccept;
  [v4 appendFormat:@"\nshareURLs: %@\nshareMetadatas: %@", shareURLsToAccept, self->_shareMetadatasToAccept];
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NSCloudKitMirroringAcceptShareInvitationsRequest;
  v4 = [(NSCloudKitMirroringRequest *)&v6 copyWithZone:a3];
  v4[10] = [(NSArray *)self->_shareURLsToAccept copy];
  v4[11] = [(NSArray *)self->_shareMetadatasToAccept copy];
  return v4;
}

@end