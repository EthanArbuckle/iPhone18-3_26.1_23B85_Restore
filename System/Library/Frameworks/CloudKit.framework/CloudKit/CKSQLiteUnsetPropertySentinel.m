@interface CKSQLiteUnsetPropertySentinel
+ (id)forwardingTargetForSelector:(SEL)a3;
@end

@implementation CKSQLiteUnsetPropertySentinel

+ (id)forwardingTargetForSelector:(SEL)a3
{
  v3 = objc_msgSend_currentHandler(CKSignificantIssueHandler, a2, a3);
  v4 = [CKSignificantIssue alloc];
  v5 = [CKSourceCodeLocation alloc];
  v7 = objc_msgSend_initWithFilePath_lineNumber_(v5, v6, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/SQLite/CKSQLiteTable.m", 291);
  v9 = objc_msgSend_initWithSourceCodeLocation_format_(v4, v8, v7, @"Attempted to access CKSQLiteUnsetPropertySentinel. This probably means a fetch operation did not include a needed property.");
  objc_msgSend_handleSignificantIssue_actions_(v3, v10, v9, 0);

  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"Attempted to access CKSQLiteUnsetPropertySentinel. This probably means a fetch operation did not include a needed property.");
  objc_msgSend_UTF8String(v12, v13, v14);
  result = _os_crash();
  __break(1u);
  return result;
}

@end