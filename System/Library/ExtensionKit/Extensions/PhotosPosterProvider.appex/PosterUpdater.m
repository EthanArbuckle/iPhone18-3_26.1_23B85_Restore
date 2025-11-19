@interface PosterUpdater
- (void)updateSuggestionDescriptors:(NSArray *)a3 forConfiguration:(PRPosterConfiguration *)a4 withSessionInfo:(PRUpdatingSessionInfo *)a5 completion:(id)a6;
@end

@implementation PosterUpdater

- (void)updateSuggestionDescriptors:(NSArray *)a3 forConfiguration:(PRPosterConfiguration *)a4 withSessionInfo:(PRUpdatingSessionInfo *)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;

  sub_10001179C(&unk_1000357B8, v11);
}

@end