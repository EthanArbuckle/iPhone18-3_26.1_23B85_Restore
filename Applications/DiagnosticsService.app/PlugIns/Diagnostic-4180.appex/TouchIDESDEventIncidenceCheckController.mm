@interface TouchIDESDEventIncidenceCheckController
- (void)start;
@end

@implementation TouchIDESDEventIncidenceCheckController

- (void)start
{
  if (([(TouchIDESDEventIncidenceCheckController *)self isCancelled]& 1) != 0)
  {
    goto LABEL_5;
  }

  v3 = [(TouchIDESDEventIncidenceCheckController *)self inputs];
  v4 = [v3 biokitOptions];
  v9 = [TouchIDManager runTouchIDDiagnostic:5 options:v4];

  if (!v9)
  {
LABEL_5:
    v9 = 0;
  }

  else if (([(TouchIDESDEventIncidenceCheckController *)self isCancelled]& 1) == 0)
  {
    v5 = [v9 objectForKeyedSubscript:@"data"];
    v6 = [(TouchIDESDEventIncidenceCheckController *)self result];
    [v6 setData:v5];

    v7 = [v9 objectForKeyedSubscript:@"testStatus"];
    v8 = [(TouchIDESDEventIncidenceCheckController *)self result];
    [v8 setStatusCode:v7];
  }

  [(TouchIDESDEventIncidenceCheckController *)self setFinished:1];
}

@end