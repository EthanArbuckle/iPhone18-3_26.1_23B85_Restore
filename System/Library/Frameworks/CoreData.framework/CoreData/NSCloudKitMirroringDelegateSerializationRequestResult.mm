@interface NSCloudKitMirroringDelegateSerializationRequestResult
- (NSCloudKitMirroringDelegateSerializationRequestResult)initWithRequest:(id)a3 storeIdentifier:(id)a4 serializedObjects:(id)a5 error:(id)a6;
- (void)dealloc;
@end

@implementation NSCloudKitMirroringDelegateSerializationRequestResult

- (NSCloudKitMirroringDelegateSerializationRequestResult)initWithRequest:(id)a3 storeIdentifier:(id)a4 serializedObjects:(id)a5 error:(id)a6
{
  v10.receiver = self;
  v10.super_class = NSCloudKitMirroringDelegateSerializationRequestResult;
  v7 = [(NSCloudKitMirroringResult *)&v10 initWithRequest:a3 storeIdentifier:a4 success:a5 != 0 madeChanges:0 error:a6];
  if (v7)
  {
    if (a5)
    {
      v8 = [a5 copy];
    }

    else
    {
      v8 = NSDictionary_EmptyDictionary;
    }

    v7->_serializedObjects = v8;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringDelegateSerializationRequestResult;
  [(NSCloudKitMirroringResult *)&v3 dealloc];
}

@end