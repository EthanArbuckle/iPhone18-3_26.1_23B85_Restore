@interface QLThumbnailAdditionEntry
- (NSString)unparsedVolumeUUID;
- (QLThumbnailAdditionEntry)initWithCoder:(id)a3;
- (id)initFromPQLResultSet:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation QLThumbnailAdditionEntry

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(QLThumbnailAdditionEntry *)self lastHitDate];
  [v4 encodeObject:v5 forKey:@"date"];

  [v4 encodeInt64:-[QLThumbnailAdditionEntry documentID](self forKey:{"documentID"), @"docId"}];
  [v4 encodeInt64:-[QLThumbnailAdditionEntry size](self forKey:{"size"), @"size"}];
  v6 = [(QLThumbnailAdditionEntry *)self lastSeenURL];
  [v4 encodeObject:v6 forKey:@"url"];

  v7 = [(QLThumbnailAdditionEntry *)self vol_uuid];
  [v4 encodeObject:v7 forKey:@"vol_uuid"];
}

- (QLThumbnailAdditionEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = QLThumbnailAdditionEntry;
  v5 = [(QLThumbnailAdditionEntry *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    [(QLThumbnailAdditionEntry *)v5 setLastHitDate:v6];

    -[QLThumbnailAdditionEntry setDocumentID:](v5, "setDocumentID:", [v4 decodeInt64ForKey:@"docId"]);
    -[QLThumbnailAdditionEntry setSize:](v5, "setSize:", [v4 decodeInt64ForKey:@"size"]);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    [(QLThumbnailAdditionEntry *)v5 setLastSeenURL:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vol_uuid"];
    [(QLThumbnailAdditionEntry *)v5 setVol_uuid:v8];
  }

  return v5;
}

- (NSString)unparsedVolumeUUID
{
  v9 = *MEMORY[0x1E69E9840];
  *v7 = 0;
  v2 = [(QLThumbnailAdditionEntry *)self vol_uuid:0];
  [v2 getBytes:uu length:16];

  uuid_unparse_upper(uu, v6);
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)initFromPQLResultSet:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = QLThumbnailAdditionEntry;
  v7 = [(QLThumbnailAdditionEntry *)&v15 init];
  if (!v7)
  {
LABEL_6:
    v13 = v7;
    goto LABEL_7;
  }

  if ([v6 columns] == 5 || objc_msgSend(v6, "columns") == 4)
  {
    -[QLThumbnailAdditionEntry setDocumentID:](v7, "setDocumentID:", [v6 unsignedLongLongAtIndex:0]);
    v8 = [v6 dataAtIndex:1];
    [(QLThumbnailAdditionEntry *)v7 setVol_uuid:v8];

    v9 = [v6 dateAtIndex:2];
    [(QLThumbnailAdditionEntry *)v7 setLastHitDate:v9];

    v10 = MEMORY[0x1E695DFF8];
    v11 = [v6 stringAtIndex:3];
    v12 = [v10 fileURLWithPath:v11];
    [(QLThumbnailAdditionEntry *)v7 setLastSeenURL:v12];

    if ([v6 columns] == 5)
    {
      -[QLThumbnailAdditionEntry setSize:](v7, "setSize:", [v6 unsignedLongLongAtIndex:4]);
    }

    goto LABEL_6;
  }

  if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithSqliteCode:20 andMessage:@"This result set should have four or five columns"];
    *a4 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_7:

  return v13;
}

@end