@interface NSCKImportPendingRelationship
+ (NSManagedObject)insertPendingRelationshipForFailedRelationship:(uint64_t)a3 forOperation:(uint64_t)a4 inStore:(void *)a5 withManagedObjectContext:;
+ (uint64_t)entityPath;
- (BOOL)needsDeleteBool;
@end

@implementation NSCKImportPendingRelationship

- (BOOL)needsDeleteBool
{
  v2 = [(NSCKImportPendingRelationship *)self needsDelete];

  return [v2 BOOLValue];
}

+ (NSManagedObject)insertPendingRelationshipForFailedRelationship:(uint64_t)a3 forOperation:(uint64_t)a4 inStore:(void *)a5 withManagedObjectContext:
{
  objc_opt_self();
  v9 = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKImportPendingRelationship entityPath], a5);
  v10 = MEMORY[0x1E695E110];
  [(NSManagedObject *)v9 setNeedsDelete:MEMORY[0x1E695E110]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSManagedObject *)v9 setNeedsDelete:MEMORY[0x1E695E110]];
    if (a2)
    {
      -[NSManagedObject setRecordName:](v9, "setRecordName:", [*(a2 + 32) recordName]);
      v11 = *(a2 + 32);
    }

    else
    {
      -[NSManagedObject setRecordName:](v9, "setRecordName:", [0 recordName]);
      v11 = 0;
    }

    -[NSManagedObject setRecordZoneName:](v9, "setRecordZoneName:", [objc_msgSend(v11 "zoneID")]);
    if (a2)
    {
      -[NSManagedObject setRecordZoneOwnerName:](v9, "setRecordZoneOwnerName:", [objc_msgSend(*(a2 + 32) "zoneID")]);
      v12 = *(a2 + 8);
    }

    else
    {
      -[NSManagedObject setRecordZoneOwnerName:](v9, "setRecordZoneOwnerName:", [objc_msgSend(0 "zoneID")]);
      v12 = 0;
    }

    -[NSManagedObject setCdEntityName:](v9, "setCdEntityName:", [objc_msgSend(v12 "entity")]);
    if (a2)
    {
      -[NSManagedObject setRelatedEntityName:](v9, "setRelatedEntityName:", [objc_msgSend(*(a2 + 16) "entity")]);
      v13 = *(a2 + 24);
    }

    else
    {
      -[NSManagedObject setRelatedEntityName:](v9, "setRelatedEntityName:", [objc_msgSend(0 "entity")]);
      v13 = 0;
    }

    -[NSManagedObject setRelatedRecordName:](v9, "setRelatedRecordName:", [v13 recordName]);
    if (a2)
    {
      -[NSManagedObject setRelatedRecordZoneName:](v9, "setRelatedRecordZoneName:", [objc_msgSend(*(a2 + 32) "zoneID")]);
      v14 = *(a2 + 32);
    }

    else
    {
      -[NSManagedObject setRelatedRecordZoneName:](v9, "setRelatedRecordZoneName:", [objc_msgSend(0 "zoneID")]);
      v14 = 0;
    }

    -[NSManagedObject setRelatedRecordZoneOwnerName:](v9, "setRelatedRecordZoneOwnerName:", [objc_msgSend(v14 "zoneID")]);
    if (a2)
    {
      v15 = 8;
LABEL_26:
      v21 = *(a2 + v15);
LABEL_27:
      -[NSManagedObject setRelationshipName:](v9, "setRelationshipName:", [v21 name]);
      goto LABEL_28;
    }

    goto LABEL_38;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a2)
    {
      if (*(a2 + 8) == 1)
      {
        v16 = MEMORY[0x1E695E118];
      }

      else
      {
        v16 = v10;
      }

      [(NSManagedObject *)v9 setNeedsDelete:v16];
      v17 = *(a2 + 16);
    }

    else
    {
      [(NSManagedObject *)v9 setNeedsDelete:MEMORY[0x1E695E110]];
      v17 = 0;
    }

    -[NSManagedObject setCdEntityName:](v9, "setCdEntityName:", [objc_msgSend(v17 "entity")]);
    if (a2)
    {
      -[NSManagedObject setRelatedEntityName:](v9, "setRelatedEntityName:", [objc_msgSend(*(a2 + 24) "entity")]);
      v18 = *(a2 + 48);
    }

    else
    {
      -[NSManagedObject setRelatedEntityName:](v9, "setRelatedEntityName:", [objc_msgSend(0 "entity")]);
      v18 = 0;
    }

    -[NSManagedObject setRecordName:](v9, "setRecordName:", [v18 recordName]);
    if (a2)
    {
      -[NSManagedObject setRecordZoneName:](v9, "setRecordZoneName:", [objc_msgSend(*(a2 + 48) "zoneID")]);
      v19 = *(a2 + 48);
    }

    else
    {
      -[NSManagedObject setRecordZoneName:](v9, "setRecordZoneName:", [objc_msgSend(0 "zoneID")]);
      v19 = 0;
    }

    -[NSManagedObject setRecordZoneOwnerName:](v9, "setRecordZoneOwnerName:", [objc_msgSend(v19 "zoneID")]);
    if (a2)
    {
      -[NSManagedObject setRelatedRecordName:](v9, "setRelatedRecordName:", [*(a2 + 56) recordName]);
      v20 = *(a2 + 56);
    }

    else
    {
      -[NSManagedObject setRelatedRecordName:](v9, "setRelatedRecordName:", [0 recordName]);
      v20 = 0;
    }

    -[NSManagedObject setRelatedRecordZoneName:](v9, "setRelatedRecordZoneName:", [objc_msgSend(v20 "zoneID")]);
    if (a2)
    {
      -[NSManagedObject setRelatedRecordZoneOwnerName:](v9, "setRelatedRecordZoneOwnerName:", [objc_msgSend(*(a2 + 56) "zoneID")]);
      v15 = 16;
      goto LABEL_26;
    }

    -[NSManagedObject setRelatedRecordZoneOwnerName:](v9, "setRelatedRecordZoneOwnerName:", [objc_msgSend(0 "zoneID")]);
LABEL_38:
    v21 = 0;
    goto LABEL_27;
  }

LABEL_28:
  [(NSManagedObject *)v9 setOperation:a3];
  [a5 assignObject:v9 toPersistentStore:a4];
  return v9;
}

+ (uint64_t)entityPath
{
  objc_opt_self();
  v0 = MEMORY[0x1E696AEC0];
  v1 = +[PFCloudKitMetadataModel ancillaryModelNamespace];
  v2 = objc_opt_class();
  return [v0 stringWithFormat:@"%@/%@", v1, NSStringFromClass(v2)];
}

@end