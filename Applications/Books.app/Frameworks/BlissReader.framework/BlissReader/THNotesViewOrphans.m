@interface THNotesViewOrphans
- (NSArray)sectionArray;
- (NSString)subtitle;
- (NSString)title;
- (THNotesViewOrphans)init;
- (void)dealloc;
- (void)updateWithAllAnnotations:(id)a3 orphanedAnnotations:(id)a4 annotationController:(id)a5 navigationModel:(id)a6;
@end

@implementation THNotesViewOrphans

- (THNotesViewOrphans)init
{
  v4.receiver = self;
  v4.super_class = THNotesViewOrphans;
  v2 = [(THNotesViewOrphans *)&v4 init];
  if (v2)
  {
    v2->mImage = [UIImage th_imageNamed:@"notes-general"];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THNotesViewOrphans;
  [(THNotesViewOrphans *)&v3 dealloc];
}

- (NSString)title
{
  v2 = THBundle();

  return [v2 localizedStringForKey:@"Notes from previous versions" value:&stru_471858 table:0];
}

- (NSString)subtitle
{
  v2 = THBundle();

  return [v2 localizedStringForKey:@"Old Notes" value:&stru_471858 table:0];
}

- (void)updateWithAllAnnotations:(id)a3 orphanedAnnotations:(id)a4 annotationController:(id)a5 navigationModel:(id)a6
{
  self->mOrphanedAnnotations = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_12C4B4;
  v10[3] = &unk_45DCE0;
  v10[4] = a6;
  self->mOrphanedAnnotations = [a5 cachedAnnotationsForAnnotations:a4 withFilter:v10];
}

- (NSArray)sectionArray
{
  v3 = +[NSMutableArray array];
  v4 = objc_alloc_init(THNotesViewSection);
  [(NSArray *)v3 addObject:v4];
  -[THNotesViewSection setTitle:](v4, "setTitle:", [objc_msgSend(THBundle() localizedStringForKey:@"Old Notes" value:&stru_471858 table:{0), "stringByTransformingForTHNotesSectionHeader"}]);
  [(THNotesViewSection *)v4 setNotes:[(THAnnotationCache *)self->mOrphanedAnnotations highlightAnnotationsSortedByRange]];

  return v3;
}

@end