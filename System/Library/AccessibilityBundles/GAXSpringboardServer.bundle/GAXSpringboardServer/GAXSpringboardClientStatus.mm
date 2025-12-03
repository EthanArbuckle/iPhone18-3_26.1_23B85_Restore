@interface GAXSpringboardClientStatus
- (id)description;
@end

@implementation GAXSpringboardClientStatus

- (id)description
{
  sessionApplicationName = [(GAXSpringboardClientStatus *)self sessionApplicationName];
  archivedSessionApplicationIcon = [(GAXSpringboardClientStatus *)self archivedSessionApplicationIcon];
  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [archivedSessionApplicationIcon length] != 0);
  v6 = [NSString stringWithFormat:@"GAXSpringboardClientStatus<%p>. appName:%@. hasIconData:%@", self, sessionApplicationName, v5];

  return v6;
}

@end