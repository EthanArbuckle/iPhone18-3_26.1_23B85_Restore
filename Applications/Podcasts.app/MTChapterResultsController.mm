@interface MTChapterResultsController
- (id)indexPathForObject:(id)object;
- (id)objectAtIndexPath:(id)path;
- (unint64_t)numberOfObjectsInSection:(unint64_t)section;
- (void)dealloc;
- (void)didLoadChapters;
- (void)reloadData;
@end

@implementation MTChapterResultsController

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MTChapterResultsController;
  [(MTChapterResultsController *)&v4 dealloc];
}

- (void)reloadData
{
  v3 = +[MTPlayerController defaultInstance];
  player = [v3 player];

  currentItem = [player currentItem];
  currentItem2 = [(MTChapterResultsController *)self currentItem];
  v6 = [currentItem2 isEqual:currentItem];

  if ((v6 & 1) == 0)
  {
    currentItem3 = [(MTChapterResultsController *)self currentItem];

    if (currentItem3)
    {
      v8 = +[NSNotificationCenter defaultCenter];
      v9 = IMMediaItemDidLoadChaptersNotification;
      currentItem4 = [(MTChapterResultsController *)self currentItem];
      [v8 removeObserver:self name:v9 object:currentItem4];
    }

    else
    {
      v9 = IMMediaItemDidLoadChaptersNotification;
    }

    [(MTChapterResultsController *)self setCurrentItem:currentItem];
    v11 = +[NSNotificationCenter defaultCenter];
    currentItem5 = [(MTChapterResultsController *)self currentItem];
    [v11 addObserver:self selector:"didLoadChapters" name:v9 object:currentItem5];

    [(MTChapterResultsController *)self didLoadChapters];
  }
}

- (id)objectAtIndexPath:(id)path
{
  pathCopy = path;
  chapters = [(MTChapterResultsController *)self chapters];
  v6 = [pathCopy row];

  v7 = [chapters objectAtIndex:v6];

  return v7;
}

- (id)indexPathForObject:(id)object
{
  objectCopy = object;
  chapters = [(MTChapterResultsController *)self chapters];
  v6 = [chapters indexOfObject:objectCopy];

  return [NSIndexPath indexPathForRow:v6 inSection:0];
}

- (unint64_t)numberOfObjectsInSection:(unint64_t)section
{
  chapters = [(MTChapterResultsController *)self chapters];
  v4 = [chapters count];

  return v4;
}

- (void)didLoadChapters
{
  currentItem = [(MTChapterResultsController *)self currentItem];
  timeChapters = [currentItem timeChapters];

  delegate = [(MTResultsController *)self delegate];
  [delegate controllerWillChangeContent:self];

  chapters = [(MTChapterResultsController *)self chapters];
  v6 = [chapters count];

  if (v6)
  {
    v7 = 0;
    do
    {
      chapters2 = [(MTChapterResultsController *)self chapters];
      v9 = [chapters2 objectAtIndexedSubscript:v7];

      delegate2 = [(MTResultsController *)self delegate];
      v11 = [NSIndexPath indexPathForRow:v7 inSection:0];
      [delegate2 controller:self didChangeObject:v9 atIndexPath:v11 forChangeType:2 newIndexPath:0];

      ++v7;
      chapters3 = [(MTChapterResultsController *)self chapters];
      v13 = [chapters3 count];
    }

    while (v7 < v13);
  }

  [(MTChapterResultsController *)self setChapters:timeChapters];
  chapters4 = [(MTChapterResultsController *)self chapters];
  v15 = [chapters4 count];

  if (v15)
  {
    v16 = 0;
    do
    {
      chapters5 = [(MTChapterResultsController *)self chapters];
      v18 = [chapters5 objectAtIndexedSubscript:v16];

      delegate3 = [(MTResultsController *)self delegate];
      v20 = [NSIndexPath indexPathForRow:v16 inSection:0];
      [delegate3 controller:self didChangeObject:v18 atIndexPath:0 forChangeType:1 newIndexPath:v20];

      ++v16;
      chapters6 = [(MTChapterResultsController *)self chapters];
      v22 = [chapters6 count];
    }

    while (v16 < v22);
  }

  delegate4 = [(MTResultsController *)self delegate];
  [delegate4 controllerDidChangeContent:self];
}

@end