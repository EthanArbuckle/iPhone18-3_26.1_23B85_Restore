@interface CollectionDeleteSession
- (void)applyToCollection:(id)collection completion:(id)completion;
@end

@implementation CollectionDeleteSession

- (void)applyToCollection:(id)collection completion:(id)completion
{
  completionCopy = completion;
  collection = [(CollectionEditSession *)self collection];
  selectedObjectSet = [(CollectionEditSession *)self selectedObjectSet];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100D18CD0;
  v9[3] = &unk_10165E240;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [collection removeObjects:selectedObjectSet completion:v9];
}

@end