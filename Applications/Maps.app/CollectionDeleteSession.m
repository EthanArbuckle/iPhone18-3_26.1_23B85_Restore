@interface CollectionDeleteSession
- (void)applyToCollection:(id)a3 completion:(id)a4;
@end

@implementation CollectionDeleteSession

- (void)applyToCollection:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(CollectionEditSession *)self collection];
  v7 = [(CollectionEditSession *)self selectedObjectSet];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100D18CD0;
  v9[3] = &unk_10165E240;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  [v6 removeObjects:v7 completion:v9];
}

@end