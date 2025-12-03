@interface QLThumbnailAdditionEntry
- (NSString)unparsedVolumeUUID;
- (QLThumbnailAdditionEntry)initWithCoder:(id)coder;
- (id)initFromPQLResultSet:(id)set error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation QLThumbnailAdditionEntry

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  lastHitDate = [(QLThumbnailAdditionEntry *)self lastHitDate];
  [coderCopy encodeObject:lastHitDate forKey:@"date"];

  [coderCopy encodeInt64:-[QLThumbnailAdditionEntry documentID](self forKey:{"documentID"), @"docId"}];
  [coderCopy encodeInt64:-[QLThumbnailAdditionEntry size](self forKey:{"size"), @"size"}];
  lastSeenURL = [(QLThumbnailAdditionEntry *)self lastSeenURL];
  [coderCopy encodeObject:lastSeenURL forKey:@"url"];

  vol_uuid = [(QLThumbnailAdditionEntry *)self vol_uuid];
  [coderCopy encodeObject:vol_uuid forKey:@"vol_uuid"];
}

- (QLThumbnailAdditionEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = QLThumbnailAdditionEntry;
  v5 = [(QLThumbnailAdditionEntry *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    [(QLThumbnailAdditionEntry *)v5 setLastHitDate:v6];

    -[QLThumbnailAdditionEntry setDocumentID:](v5, "setDocumentID:", [coderCopy decodeInt64ForKey:@"docId"]);
    -[QLThumbnailAdditionEntry setSize:](v5, "setSize:", [coderCopy decodeInt64ForKey:@"size"]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    [(QLThumbnailAdditionEntry *)v5 setLastSeenURL:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vol_uuid"];
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

- (id)initFromPQLResultSet:(id)set error:(id *)error
{
  setCopy = set;
  v15.receiver = self;
  v15.super_class = QLThumbnailAdditionEntry;
  v7 = [(QLThumbnailAdditionEntry *)&v15 init];
  if (!v7)
  {
LABEL_6:
    v13 = v7;
    goto LABEL_7;
  }

  if ([setCopy columns] == 5 || objc_msgSend(setCopy, "columns") == 4)
  {
    -[QLThumbnailAdditionEntry setDocumentID:](v7, "setDocumentID:", [setCopy unsignedLongLongAtIndex:0]);
    v8 = [setCopy dataAtIndex:1];
    [(QLThumbnailAdditionEntry *)v7 setVol_uuid:v8];

    v9 = [setCopy dateAtIndex:2];
    [(QLThumbnailAdditionEntry *)v7 setLastHitDate:v9];

    v10 = MEMORY[0x1E695DFF8];
    v11 = [setCopy stringAtIndex:3];
    v12 = [v10 fileURLWithPath:v11];
    [(QLThumbnailAdditionEntry *)v7 setLastSeenURL:v12];

    if ([setCopy columns] == 5)
    {
      -[QLThumbnailAdditionEntry setSize:](v7, "setSize:", [setCopy unsignedLongLongAtIndex:4]);
    }

    goto LABEL_6;
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithSqliteCode:20 andMessage:@"This result set should have four or five columns"];
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_7:

  return v13;
}

@end