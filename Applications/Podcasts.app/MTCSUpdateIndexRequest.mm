@interface MTCSUpdateIndexRequest
- (MTCSUpdateIndexRequest)initWithReason:(id)reason entityLoadingBlock:(id)block searchableIndex:(id)index completion:(id)completion;
- (id)description;
@end

@implementation MTCSUpdateIndexRequest

- (MTCSUpdateIndexRequest)initWithReason:(id)reason entityLoadingBlock:(id)block searchableIndex:(id)index completion:(id)completion
{
  reasonCopy = reason;
  blockCopy = block;
  indexCopy = index;
  completionCopy = completion;
  v24.receiver = self;
  v24.super_class = MTCSUpdateIndexRequest;
  v15 = [(MTCSUpdateIndexRequest *)&v24 init];
  if (v15)
  {
    v16 = +[NSUUID UUID];
    uUIDString = [v16 UUIDString];
    identifier = v15->_identifier;
    v15->_identifier = uUIDString;

    objc_storeStrong(&v15->_reason, reason);
    v19 = objc_retainBlock(blockCopy);
    entityLoadingBlock = v15->_entityLoadingBlock;
    v15->_entityLoadingBlock = v19;

    objc_storeStrong(&v15->_searchableIndex, index);
    v21 = objc_retainBlock(completionCopy);
    completion = v15->_completion;
    v15->_completion = v21;
  }

  return v15;
}

- (id)description
{
  reason = [(MTCSUpdateIndexRequest *)self reason];
  v4 = [NSString stringWithFormat:@"'%@', id = %@", reason, self->_identifier];

  return v4;
}

@end