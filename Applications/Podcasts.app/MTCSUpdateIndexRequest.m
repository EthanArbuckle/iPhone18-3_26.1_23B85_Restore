@interface MTCSUpdateIndexRequest
- (MTCSUpdateIndexRequest)initWithReason:(id)a3 entityLoadingBlock:(id)a4 searchableIndex:(id)a5 completion:(id)a6;
- (id)description;
@end

@implementation MTCSUpdateIndexRequest

- (MTCSUpdateIndexRequest)initWithReason:(id)a3 entityLoadingBlock:(id)a4 searchableIndex:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = MTCSUpdateIndexRequest;
  v15 = [(MTCSUpdateIndexRequest *)&v24 init];
  if (v15)
  {
    v16 = +[NSUUID UUID];
    v17 = [v16 UUIDString];
    identifier = v15->_identifier;
    v15->_identifier = v17;

    objc_storeStrong(&v15->_reason, a3);
    v19 = objc_retainBlock(v12);
    entityLoadingBlock = v15->_entityLoadingBlock;
    v15->_entityLoadingBlock = v19;

    objc_storeStrong(&v15->_searchableIndex, a5);
    v21 = objc_retainBlock(v14);
    completion = v15->_completion;
    v15->_completion = v21;
  }

  return v15;
}

- (id)description
{
  v3 = [(MTCSUpdateIndexRequest *)self reason];
  v4 = [NSString stringWithFormat:@"'%@', id = %@", v3, self->_identifier];

  return v4;
}

@end