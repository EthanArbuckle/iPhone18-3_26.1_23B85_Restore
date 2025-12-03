@interface CRLConnectionLineKnobTrackerAccessibility
+ (id)crlaxCastFrom:(id)from;
- (void)moveKnobToCanvasPosition:(CGPoint)position;
@end

@implementation CRLConnectionLineKnobTrackerAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (void)moveKnobToCanvasPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v51 = 0;
  crlaxTarget = [(CRLConnectionLineKnobTrackerAccessibility *)self crlaxTarget];
  v7 = [crlaxTarget rep];
  layout = [v7 layout];

  v9 = objc_opt_class();
  v10 = __CRLAccessibilityCastAsClass(v9, layout, 1, &v51);
  if (v51 == 1)
  {
    goto LABEL_42;
  }

  v11 = v10;

  connectedFrom = [v11 connectedFrom];
  connectedTo = [v11 connectedTo];
  v50.receiver = self;
  v50.super_class = CRLConnectionLineKnobTrackerAccessibility;
  [(CRLConnectionLineKnobTrackerAccessibility *)&v50 moveKnobToCanvasPosition:x, y];
  if (v11)
  {
    connectedFrom2 = [v11 connectedFrom];
    connectedTo2 = [v11 connectedTo];
    v16 = connectedTo2;
    if (connectedFrom)
    {
      v17 = 1;
    }

    else
    {
      v17 = connectedFrom2 == 0;
    }

    v18 = !v17;
    if (connectedTo)
    {
      v19 = 1;
    }

    else
    {
      v19 = connectedTo2 == 0;
    }

    v20 = !v19;
    if ((!connectedFrom || (v21 = connectedFrom, connectedFrom2)) && (!connectedTo || (v21 = connectedTo, connectedTo2)))
    {
      if (((v18 | v20) & 1) == 0)
      {
        v42 = connectedTo2;
        v43 = connectedTo;
        if (connectedTo == connectedTo2)
        {
          v42 = connectedFrom2;
          v43 = connectedFrom;
          if (connectedFrom == connectedFrom2)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            goto LABEL_35;
          }
        }

        v44 = +[NSBundle mainBundle];
        v25 = [v44 localizedStringForKey:@"Changed connection from %1$@ to %2$@" value:0 table:0];

        v26 = v43;
        v27 = v42;
        if (!v25)
        {
          goto LABEL_35;
        }

LABEL_21:
        if (v26)
        {
          v49 = v27;
          v46 = v16;
          crlaxTarget2 = [(CRLConnectionLineKnobTrackerAccessibility *)self crlaxTarget];
          v29 = [crlaxTarget2 rep];
          interactiveCanvasController = [v29 interactiveCanvasController];

          v51 = 0;
          info = [v26 info];
          v47 = interactiveCanvasController;
          v32 = [interactiveCanvasController repForInfo:info];

          v33 = objc_opt_class();
          v48 = __CRLAccessibilityCastAsSafeCategory(v33, v32, 1, &v51);
          if (v51 != 1)
          {

            if (!v49)
            {
              crlaxDescriptionForConnections = [v48 crlaxDescriptionForConnections];
              v41 = [NSString localizedStringWithFormat:v25, crlaxDescriptionForConnections];
              goto LABEL_32;
            }

            v45 = connectedFrom2;
            v51 = 0;
            info2 = [v49 info];
            v35 = [interactiveCanvasController repForInfo:info2];

            v36 = objc_opt_class();
            v37 = __CRLAccessibilityCastAsSafeCategory(v36, v35, 1, &v51);
            if (v51 != 1)
            {
              crlaxDescriptionForConnections = v37;

              crlaxDescriptionForConnections2 = [v48 crlaxDescriptionForConnections];
              v38CrlaxDescriptionForConnections = [crlaxDescriptionForConnections crlaxDescriptionForConnections];
              v41 = [NSString localizedStringWithFormat:v25, crlaxDescriptionForConnections2, v38CrlaxDescriptionForConnections];

              connectedFrom2 = v45;
LABEL_32:

              if ([v41 length])
              {
                CRLAccessibilityPostAnnouncementNotification(self, v41);
              }

              v16 = v46;
              v27 = v49;
              goto LABEL_35;
            }
          }

LABEL_42:
          abort();
        }

LABEL_35:

        goto LABEL_36;
      }

      if (v18)
      {
        v21 = connectedFrom2;
      }

      else
      {
        v21 = connectedTo2;
      }

      v22 = +[NSBundle mainBundle];
      v23 = v22;
      v24 = @"Connected to %@";
    }

    else
    {
      v22 = +[NSBundle mainBundle];
      v23 = v22;
      v24 = @"Disconnected from %@";
    }

    v25 = [v22 localizedStringForKey:v24 value:0 table:0];

    v26 = v21;
    v27 = 0;
    if (!v25)
    {
      goto LABEL_35;
    }

    goto LABEL_21;
  }

LABEL_36:
}

@end