@interface PFCloudKitContainerProvider
- (id)containerWithIdentifier:(id)a3;
- (id)containerWithIdentifier:(id)a3 options:(id)a4;
@end

@implementation PFCloudKitContainerProvider

- (id)containerWithIdentifier:(id)a3
{
  v4 = getCloudKitCKContainerClass[0]();

  return [(objc_class *)v4 containerWithIdentifier:a3];
}

- (id)containerWithIdentifier:(id)a3 options:(id)a4
{
  result = [(PFCloudKitContainerProvider *)self containerWithIdentifier:a3];
  if (result && a4)
  {
    v6 = [objc_alloc(getCloudKitCKContainerClass[0]()) initWithContainerID:objc_msgSend(result options:{"containerID"), a4}];

    return v6;
  }

  return result;
}

@end