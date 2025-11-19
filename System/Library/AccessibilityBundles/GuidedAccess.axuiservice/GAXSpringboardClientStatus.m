@interface GAXSpringboardClientStatus
- (id)description;
@end

@implementation GAXSpringboardClientStatus

- (id)description
{
  v3 = [(GAXSpringboardClientStatus *)self sessionApplicationName];
  v4 = [(GAXSpringboardClientStatus *)self archivedSessionApplicationIcon];
  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 length] != 0);
  v6 = [NSString stringWithFormat:@"GAXSpringboardClientStatus<%p>. appName:%@. hasIconData:%@", self, v3, v5];

  return v6;
}

@end