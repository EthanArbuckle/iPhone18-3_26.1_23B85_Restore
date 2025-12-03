@interface PFCloudKitContainerProvider
- (id)containerWithIdentifier:(id)identifier;
- (id)containerWithIdentifier:(id)identifier options:(id)options;
@end

@implementation PFCloudKitContainerProvider

- (id)containerWithIdentifier:(id)identifier
{
  v4 = getCloudKitCKContainerClass[0]();

  return [(objc_class *)v4 containerWithIdentifier:identifier];
}

- (id)containerWithIdentifier:(id)identifier options:(id)options
{
  result = [(PFCloudKitContainerProvider *)self containerWithIdentifier:identifier];
  if (result && options)
  {
    v6 = [objc_alloc(getCloudKitCKContainerClass[0]()) initWithContainerID:objc_msgSend(result options:{"containerID"), options}];

    return v6;
  }

  return result;
}

@end