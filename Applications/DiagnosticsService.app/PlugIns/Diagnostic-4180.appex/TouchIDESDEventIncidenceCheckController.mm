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

  inputs = [(TouchIDESDEventIncidenceCheckController *)self inputs];
  biokitOptions = [inputs biokitOptions];
  v9 = [TouchIDManager runTouchIDDiagnostic:5 options:biokitOptions];

  if (!v9)
  {
LABEL_5:
    v9 = 0;
  }

  else if (([(TouchIDESDEventIncidenceCheckController *)self isCancelled]& 1) == 0)
  {
    v5 = [v9 objectForKeyedSubscript:@"data"];
    result = [(TouchIDESDEventIncidenceCheckController *)self result];
    [result setData:v5];

    v7 = [v9 objectForKeyedSubscript:@"testStatus"];
    result2 = [(TouchIDESDEventIncidenceCheckController *)self result];
    [result2 setStatusCode:v7];
  }

  [(TouchIDESDEventIncidenceCheckController *)self setFinished:1];
}

@end