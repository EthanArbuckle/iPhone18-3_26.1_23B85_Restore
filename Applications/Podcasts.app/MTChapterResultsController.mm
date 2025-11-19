@interface MTChapterResultsController
- (id)indexPathForObject:(id)a3;
- (id)objectAtIndexPath:(id)a3;
- (unint64_t)numberOfObjectsInSection:(unint64_t)a3;
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
  v13 = [v3 player];

  v4 = [v13 currentItem];
  v5 = [(MTChapterResultsController *)self currentItem];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) == 0)
  {
    v7 = [(MTChapterResultsController *)self currentItem];

    if (v7)
    {
      v8 = +[NSNotificationCenter defaultCenter];
      v9 = IMMediaItemDidLoadChaptersNotification;
      v10 = [(MTChapterResultsController *)self currentItem];
      [v8 removeObserver:self name:v9 object:v10];
    }

    else
    {
      v9 = IMMediaItemDidLoadChaptersNotification;
    }

    [(MTChapterResultsController *)self setCurrentItem:v4];
    v11 = +[NSNotificationCenter defaultCenter];
    v12 = [(MTChapterResultsController *)self currentItem];
    [v11 addObserver:self selector:"didLoadChapters" name:v9 object:v12];

    [(MTChapterResultsController *)self didLoadChapters];
  }
}

- (id)objectAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MTChapterResultsController *)self chapters];
  v6 = [v4 row];

  v7 = [v5 objectAtIndex:v6];

  return v7;
}

- (id)indexPathForObject:(id)a3
{
  v4 = a3;
  v5 = [(MTChapterResultsController *)self chapters];
  v6 = [v5 indexOfObject:v4];

  return [NSIndexPath indexPathForRow:v6 inSection:0];
}

- (unint64_t)numberOfObjectsInSection:(unint64_t)a3
{
  v3 = [(MTChapterResultsController *)self chapters];
  v4 = [v3 count];

  return v4;
}

- (void)didLoadChapters
{
  v3 = [(MTChapterResultsController *)self currentItem];
  v24 = [v3 timeChapters];

  v4 = [(MTResultsController *)self delegate];
  [v4 controllerWillChangeContent:self];

  v5 = [(MTChapterResultsController *)self chapters];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [(MTChapterResultsController *)self chapters];
      v9 = [v8 objectAtIndexedSubscript:v7];

      v10 = [(MTResultsController *)self delegate];
      v11 = [NSIndexPath indexPathForRow:v7 inSection:0];
      [v10 controller:self didChangeObject:v9 atIndexPath:v11 forChangeType:2 newIndexPath:0];

      ++v7;
      v12 = [(MTChapterResultsController *)self chapters];
      v13 = [v12 count];
    }

    while (v7 < v13);
  }

  [(MTChapterResultsController *)self setChapters:v24];
  v14 = [(MTChapterResultsController *)self chapters];
  v15 = [v14 count];

  if (v15)
  {
    v16 = 0;
    do
    {
      v17 = [(MTChapterResultsController *)self chapters];
      v18 = [v17 objectAtIndexedSubscript:v16];

      v19 = [(MTResultsController *)self delegate];
      v20 = [NSIndexPath indexPathForRow:v16 inSection:0];
      [v19 controller:self didChangeObject:v18 atIndexPath:0 forChangeType:1 newIndexPath:v20];

      ++v16;
      v21 = [(MTChapterResultsController *)self chapters];
      v22 = [v21 count];
    }

    while (v16 < v22);
  }

  v23 = [(MTResultsController *)self delegate];
  [v23 controllerDidChangeContent:self];
}

@end