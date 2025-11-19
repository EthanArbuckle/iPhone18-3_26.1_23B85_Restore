@interface RoutePlanningWaypointListView
- (BOOL)_canDeleteWaypoints;
- (BOOL)_hasAllValidWaypoints;
- (BOOL)_shouldEnableAddStopCell;
- (BOOL)_supportsCollapsingStops;
- (BOOL)addStop;
- (BOOL)canDeleteWaypointForCellAtIndex:(unint64_t)a3;
- (BOOL)replaceWaypointAtIndex:(unint64_t)a3 withWaypoint:(id)a4;
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (CGSize)intrinsicContentSize;
- (NSArray)waypoints;
- (RoutePlanningWaypointListView)initWithWaypoints:(id)a3 editingMode:(unint64_t)a4 delegate:(id)a5 waypointInfoProvider:(id)a6;
- (RoutePlanningWaypointListViewDelegate)delegate;
- (double)_rowHeight;
- (id)_findLastEmptyWaypointCell:(id)a3;
- (id)cellForIndex:(unint64_t)a3;
- (id)contextMenuForCell:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (unint64_t)searchFieldIndexForWaypoints:(id)a3;
- (unint64_t)userAddedWaypointCount;
- (void)_layoutDottedLineForCell:(id)a3 atIndexPath:(id)a4;
- (void)_layoutDottedLines;
- (void)_refreshAddStopCellEnabled;
- (void)_reloadAllRows;
- (void)_restoreCurrentlySelectedEditingIfNeeded:(id)a3;
- (void)_updateLayoutGuideForCurrentlyEditingField;
- (void)cell:(id)a3 didChangeInputText:(id)a4;
- (void)cell:(id)a3 didReceiveMapItem:(id)a4;
- (void)cellDidClearInputText:(id)a3;
- (void)cellDidRequestSearch:(id)a3;
- (void)cellDidStartEditing:(id)a3 withUserInteraction:(BOOL)a4;
- (void)cellDidStopEditing:(id)a3;
- (void)collapseStopsIfNeeded;
- (void)deselectAllRows;
- (void)expandStopsIfNeeded;
- (void)performDeleteAtIndex:(unint64_t)a3;
- (void)refreshWaypointDisplay;
- (void)scrollWaypointCellToVisible:(id)a3 animated:(BOOL)a4;
- (void)selectNextSearchField;
- (void)selectRowIndex:(unint64_t)a3;
- (void)setMprEnabled:(BOOL)a3;
- (void)setWaypoints:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation RoutePlanningWaypointListView

- (RoutePlanningWaypointListViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v7 = [a5 row];

    [(RoutePlanningWaypointListView *)self performDeleteAtIndex:v7];
  }
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NSMutableArray *)self->_rows count]>= 4 && [(RoutePlanningWaypointListView *)self mprEnabled]&& !self->_hasCollapsedStops && [(RoutePlanningWaypointListView *)self editingMode])
  {
    v8 = [v6 cellForRowAtIndexPath:v7];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v10 = 0;
    if ((isKindOfClass & 1) != 0 && v8)
    {
      v11 = -[NSMutableArray objectAtIndexedSubscript:](self->_waypoints, "objectAtIndexedSubscript:", [v7 row]);
      v12 = [v11 composedWaypoint];
      v13 = [v12 isServerProvidedWaypoint];

      v10 = v13 ^ 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = a3;
  v8 = a4;
  if ([(RoutePlanningWaypointListView *)self _canDeleteWaypoints])
  {
    v9 = [v7 cellForRowAtIndexPath:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (-[RoutePlanningWaypointListView canDeleteWaypointForCellAtIndex:](self, "canDeleteWaypointForCellAtIndex:", [v8 row]))
    {
      [(RoutePlanningWaypointListView *)self contextMenuForCell:v11];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100BD25B4;
      v16 = v15[3] = &unk_101660440;
      v12 = v16;
      v13 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v15];
    }

    else if (v11)
    {
      v13 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:0];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v23 = a4;
  v7 = a5;
  v8 = [v23 row];
  v9 = [v7 row];
  if (v8 != v9)
  {
    v10 = v9;
    if (self->_selectedIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_8;
    }

    v11 = [v23 row];
    selectedIndex = self->_selectedIndex;
    if (v11 == selectedIndex)
    {
      selectedIndex = [v7 row];
      self->_selectedIndex = selectedIndex;
    }

    if (selectedIndex == 0x7FFFFFFFFFFFFFFFLL || selectedIndex >= [(NSMutableArray *)self->_rows count])
    {
LABEL_8:
      v13 = 0;
    }

    else
    {
      v13 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:self->_selectedIndex];
    }

    [(NSMutableArray *)self->_rows _maps_moveObjectAtIndex:v8 toIndex:v10];
    [(NSMutableArray *)self->_waypoints _maps_moveObjectAtIndex:v8 toIndex:v10];
    if (v13)
    {
      self->_selectedIndex = [(NSMutableArray *)self->_rows indexOfObject:v13];
    }

    v14 = [(NSMutableArray *)self->_rows objectAtIndex:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    [v16 setCellIndex:v8];
    v17 = [(NSMutableArray *)self->_rows objectAtIndex:v10];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    [v19 setCellIndex:v10];
    v20 = [(RoutePlanningWaypointListView *)self delegate];
    LOBYTE(v19) = objc_opt_respondsToSelector();

    if (v19)
    {
      v21 = [(RoutePlanningWaypointListView *)self delegate];
      v22 = [(NSMutableArray *)self->_waypoints objectAtIndexedSubscript:v10];
      [v21 waypointListView:self didMoveWaypoint:v22 fromIndex:v8 toIndex:v10];
    }
  }
}

- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(NSMutableArray *)self->_rows lastObject];
  objc_opt_class();
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (objc_opt_isKindOfClass())
  {
    v8 = [(NSMutableArray *)self->_rows count]- 1;
  }

  v9 = [v6 row];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL || (v10 = v9, v9 < v8) || v9 >= [(NSMutableArray *)self->_rows count])
  {
    v11 = v6;
  }

  else
  {
    v11 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v10 - 1, [v6 section]);
  }

  v12 = v11;

  return v12;
}

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v5 = a4;
  if (-[RoutePlanningWaypointListView editingMode](self, "editingMode") && (v6 = [v5 row], v6 < -[NSMutableArray count](self->_waypoints, "count")) && !self->_hasCollapsedStops)
  {
    v9 = [(NSMutableArray *)self->_waypoints objectAtIndexedSubscript:v6];
    v10 = [v9 composedWaypoint];
    v11 = [v10 isServerProvidedWaypoint];

    v7 = v11 ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)performDeleteAtIndex:(unint64_t)a3
{
  if (![(RoutePlanningWaypointListView *)self canDeleteWaypointForCellAtIndex:?])
  {
    v16 = sub_10006D178();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v33 = "[RoutePlanningWaypointListView performDeleteAtIndex:]";
      v34 = 2080;
      v35 = "RoutePlanningWaypointListView.m";
      v36 = 1024;
      *v37 = 997;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v33 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v7 = sub_100BD3038();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    v19 = self;
    if (!v19)
    {
      v24 = @"<nil>";
      goto LABEL_36;
    }

    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    if (objc_opt_respondsToSelector())
    {
      v22 = [(RoutePlanningWaypointListView *)v19 performSelector:"accessibilityIdentifier"];
      v23 = v22;
      if (v22 && ![v22 isEqualToString:v21])
      {
        v24 = [NSString stringWithFormat:@"%@<%p, %@>", v21, v19, v23];

        goto LABEL_29;
      }
    }

    v24 = [NSString stringWithFormat:@"%@<%p>", v21, v19];
LABEL_29:

LABEL_36:
    rows = v19->_rows;
    *buf = 138543874;
    v33 = v24;
    v34 = 2048;
    v35 = a3;
    v36 = 2112;
    *v37 = rows;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Cannot delete stop at index (%lu) with rows %@", buf, 0x20u);

    goto LABEL_37;
  }

  [(RoutePlanningWaypointListView *)self deselectAllRows];
  if ([(NSMutableArray *)self->_rows count]> a3)
  {
    v5 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:a3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (-[RoutePlanningWaypointListView editingMode](self, "editingMode") && v7 && (-[NSObject waypoints](v7, "waypoints"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v9 == 1))
    {
      v10 = sub_100BD3038();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v33 = a3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Deleting waypoint at index %lu", buf, 0xCu);
      }

      if (self->_selectedIndex == a3)
      {
        self->_activelyEditingSelectedField = 0;
        self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
      }

      v11 = [(RoutePlanningWaypointListView *)self waypoints];
      v12 = [v11 mutableCopy];

      [v12 removeObjectAtIndex:a3];
      [(RoutePlanningWaypointListView *)self setWaypoints:v12];
      [(RoutePlanningWaypointListView *)self _refreshAddStopCellEnabled];
      v13 = [(RoutePlanningWaypointListView *)self delegate];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        v15 = [(RoutePlanningWaypointListView *)self delegate];
        [v15 waypointListView:self didDeleteWaypointAtIndex:a3];
      }
    }

    else
    {
      v28 = sub_10006D178();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = "add stop cell";
        if (v7)
        {
          v29 = "collapsed waypoint cell";
        }

        v30 = [NSString stringWithFormat:@"Trying to delete %s", v29];
        *buf = 136316162;
        v33 = "[RoutePlanningWaypointListView performDeleteAtIndex:]";
        v34 = 2080;
        v35 = "RoutePlanningWaypointListView.m";
        v36 = 1024;
        *v37 = 1011;
        *&v37[4] = 2080;
        *&v37[6] = "validToDelete";
        v38 = 2112;
        v39 = v30;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
      }

      if (!sub_100E03634())
      {
        goto LABEL_37;
      }

      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v31 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v33 = v31;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

LABEL_37:
    return;
  }

  v25 = sub_10006D178();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v33 = "[RoutePlanningWaypointListView performDeleteAtIndex:]";
    v34 = 2080;
    v35 = "RoutePlanningWaypointListView.m";
    v36 = 1024;
    *v37 = 1005;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v7 = sub_10006D178();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v26 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v33 = v26;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    goto LABEL_37;
  }
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  if ([(RoutePlanningWaypointListView *)self canDeleteWaypointForCellAtIndex:v8])
  {
    objc_initWeak(&location, self);
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"[RoutePlanning] Delete" value:@"localized string not found" table:0];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100BD32CC;
    v15[3] = &unk_10164CE98;
    objc_copyWeak(v16, &location);
    v16[1] = v8;
    v11 = [UIContextualAction contextualActionWithStyle:1 title:v10 handler:v15];
    v18 = v11;
    v12 = [NSArray arrayWithObjects:&v18 count:1];
    v13 = [UISwipeActionsConfiguration configurationWithActions:v12];

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)canDeleteWaypointForCellAtIndex:(unint64_t)a3
{
  if (![(RoutePlanningWaypointListView *)self _canDeleteWaypoints]|| [(NSMutableArray *)self->_rows count]<= a3)
  {
    return 0;
  }

  v5 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7 && ([v7 waypoints], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v9 <= 1))
  {
    v11 = [v7 waypoints];
    v12 = [v11 firstObject];
    v13 = [v12 composedWaypoint];
    v14 = [v13 isServerProvidedWaypoint];

    v10 = v14 ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_canDeleteWaypoints
{
  v3 = sub_1000282CC(self->_waypoints, &stru_10164CE70);
  v4 = [v3 count];

  return [(RoutePlanningWaypointListView *)self editingMode]&& [(RoutePlanningWaypointListView *)self mprEnabled]&& v4 >= 3 && !self->_hasCollapsedStops;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = -[NSMutableArray objectAtIndexedSubscript:](self->_rows, "objectAtIndexedSubscript:", [v6 row]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 waypoints];
    if ([v8 count] >= 2 && -[RoutePlanningWaypointListView _supportsCollapsingStops](self, "_supportsCollapsingStops"))
    {
      v9 = sub_100BD3038();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v36) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Did select collapsed stops", &v36, 2u);
      }

      v10 = [(RoutePlanningWaypointListView *)self delegate];
      v11 = objc_opt_respondsToSelector();

      if ((v11 & 1) == 0)
      {
        v22 = sub_10006D178();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v36 = 136315906;
          v37 = "[RoutePlanningWaypointListView tableView:didSelectRowAtIndexPath:]";
          v38 = 2080;
          v39 = "RoutePlanningWaypointListView.m";
          v40 = 1024;
          v41 = 898;
          v42 = 2080;
          v43 = "[self.delegate respondsToSelector:@selector(waypointListView:didSelectCollapsedWaypoints:)]";
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v36, 0x26u);
        }

        if (sub_100E03634())
        {
          v23 = sub_10006D178();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = +[NSThread callStackSymbols];
            v36 = 138412290;
            v37 = v24;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", &v36, 0xCu);
          }
        }
      }

      v12 = [(RoutePlanningWaypointListView *)self delegate];
      [v12 waypointListView:self didSelectCollapsedWaypoints:v8];
LABEL_23:

LABEL_29:
      goto LABEL_30;
    }

    if ([(RoutePlanningWaypointListView *)self editingMode]<= 1)
    {
      v13 = [(RoutePlanningWaypointListView *)self delegate];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        v15 = [v6 row];
        v16 = v15;
        if (self->_hasCollapsedStops && v15 == 1)
        {
          v25 = sub_10006D178();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v36 = 136315906;
            v37 = "[RoutePlanningWaypointListView tableView:didSelectRowAtIndexPath:]";
            v38 = 2080;
            v39 = "RoutePlanningWaypointListView.m";
            v40 = 1024;
            v41 = 905;
            v42 = 2080;
            v43 = "!_hasCollapsedStops || adjustedIndex != 1";
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v36, 0x26u);
          }

          if (!sub_100E03634())
          {
            v16 = 1;
            goto LABEL_20;
          }

          v17 = sub_10006D178();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v26 = +[NSThread callStackSymbols];
            v36 = 138412290;
            v37 = v26;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", &v36, 0xCu);
          }

          v16 = 1;
        }

        else
        {
          if (!self->_hasCollapsedStops || v15 < 2)
          {
            goto LABEL_20;
          }

          if ([(NSMutableArray *)self->_rows count]< 3 || [(NSMutableArray *)self->_rows count]>= 5)
          {
            v27 = sub_10006D178();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v36 = 136315906;
              v37 = "[RoutePlanningWaypointListView tableView:didSelectRowAtIndexPath:]";
              v38 = 2080;
              v39 = "RoutePlanningWaypointListView.m";
              v40 = 1024;
              v41 = 907;
              v42 = 2080;
              v43 = "_rows.count >= 3 && _rows.count <= 4";
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v36, 0x26u);
            }

            if (sub_100E03634())
            {
              v28 = sub_10006D178();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v29 = +[NSThread callStackSymbols];
                v36 = 138412290;
                v37 = v29;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%@", &v36, 0xCu);
              }
            }
          }

          v17 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:1];
          v18 = [v17 waypoints];
          if ([v18 count] <= 1)
          {
            v30 = sub_10006D178();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v36 = 136315906;
              v37 = "[RoutePlanningWaypointListView tableView:didSelectRowAtIndexPath:]";
              v38 = 2080;
              v39 = "RoutePlanningWaypointListView.m";
              v40 = 1024;
              v41 = 910;
              v42 = 2080;
              v43 = "collapsedWaypoints.count > 1";
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v36, 0x26u);
            }

            if (sub_100E03634())
            {
              v31 = sub_10006D178();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                v32 = +[NSThread callStackSymbols];
                v36 = 138412290;
                v37 = v32;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%@", &v36, 0xCu);
              }
            }
          }

          v16 = [v18 count] + v16 - 1;
          if (v16 >= [(NSMutableArray *)self->_waypoints count])
          {
            v33 = sub_10006D178();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v36 = 136315906;
              v37 = "[RoutePlanningWaypointListView tableView:didSelectRowAtIndexPath:]";
              v38 = 2080;
              v39 = "RoutePlanningWaypointListView.m";
              v40 = 1024;
              v41 = 912;
              v42 = 2080;
              v43 = "adjustedIndex < _waypoints.count";
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v36, 0x26u);
            }

            if (sub_100E03634())
            {
              v34 = sub_10006D178();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                v35 = +[NSThread callStackSymbols];
                v36 = 138412290;
                v37 = v35;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%@", &v36, 0xCu);
              }
            }
          }
        }

LABEL_20:
        v19 = sub_100BD3038();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v36 = 134217984;
          v37 = v16;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Did select waypoint at adjusted index %lu", &v36, 0xCu);
        }

        v12 = [(RoutePlanningWaypointListView *)self delegate];
        v20 = [v8 firstObject];
        [v12 waypointListView:self didSelectWaypoint:v20 atIndex:v16];

        goto LABEL_23;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = sub_100BD3038();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v36) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Did select Add Stop", &v36, 2u);
    }

    v8 = [(RoutePlanningWaypointListView *)self delegate];
    [v8 waypointListViewDidSelectAddStop:self];
    goto LABEL_29;
  }

LABEL_30:
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[NSMutableArray objectAtIndexedSubscript:](self->_rows, "objectAtIndexedSubscript:", [v5 row]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v8 waypoints];
    if ([v9 count] <= 1)
    {
    }

    else
    {
      v10 = [(RoutePlanningWaypointListView *)self _supportsCollapsingStops];

      if (v10)
      {
        goto LABEL_10;
      }
    }
  }

  if ([(RoutePlanningWaypointListView *)self editingMode]== 1)
  {
LABEL_10:
    v11 = 1;
    goto LABEL_18;
  }

  v12 = -[NSMutableArray objectAtIndexedSubscript:](self->_rows, "objectAtIndexedSubscript:", [v5 row]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    v11 = [v14 isEnabled];
  }

  else
  {
    v11 = 0;
  }

LABEL_18:
  return v11;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  rows = self->_rows;
  v5 = [a4 row];

  return [(NSMutableArray *)rows objectAtIndexedSubscript:v5];
}

- (id)contextMenuForCell:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_rows indexOfObject:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || (v6 = v5, ![(RoutePlanningWaypointListView *)self canDeleteWaypointForCellAtIndex:v5]))
  {
    v11 = 0;
  }

  else
  {
    objc_initWeak(&location, self);
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"[RoutePlanning] Delete" value:@"localized string not found" table:0];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100BD4164;
    v13[3] = &unk_101658B58;
    objc_copyWeak(v14, &location);
    v14[1] = v6;
    v9 = [UIAction actionWithTitle:v8 image:0 identifier:0 handler:v13];

    v16 = v9;
    v10 = [NSArray arrayWithObjects:&v16 count:1];
    v11 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v10];

    objc_destroyWeak(v14);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (void)cellDidClearInputText:(id)a3
{
  v4 = a3;
  v5 = sub_100BD3038();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Did clear input text", v9, 2u);
  }

  v6 = [(RoutePlanningWaypointListView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(RoutePlanningWaypointListView *)self delegate];
    [v8 waypointListView:self didClearInputTextForWaypointAtIndex:{-[NSMutableArray indexOfObject:](self->_rows, "indexOfObject:", v4)}];
  }
}

- (void)cellDidRequestSearch:(id)a3
{
  v4 = a3;
  v5 = [(RoutePlanningWaypointListView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = sub_100BD3038();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Will request search", v13, 2u);
    }

    if (!self->_activelyEditingSelectedField)
    {
      self->_activelyEditingSelectedField = 1;
      v8 = [(RoutePlanningWaypointListView *)self delegate];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v10 = [(RoutePlanningWaypointListView *)self delegate];
        [v10 didInteractWithWaypointFields];
      }
    }

    self->_selectedIndex = [(NSMutableArray *)self->_rows indexOfObject:v4];
    v11 = [(RoutePlanningWaypointListView *)self delegate];
    v12 = [v4 currentText];
    [v11 invokeSearchWithText:v12];
  }
}

- (void)cell:(id)a3 didReceiveMapItem:(id)a4
{
  v15 = a3;
  v6 = a4;
  if (!self->_activelyEditingSelectedField)
  {
    self->_activelyEditingSelectedField = 1;
    v7 = [(RoutePlanningWaypointListView *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(RoutePlanningWaypointListView *)self delegate];
      [v9 didInteractWithWaypointFields];
    }
  }

  v10 = [(RoutePlanningWaypointListView *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [[SearchResult alloc] initWithMapItem:v6];
    v13 = [SearchFieldItem searchFieldItemWithObject:v12];
    v14 = [(RoutePlanningWaypointListView *)self delegate];
    [v14 waypointListView:self didReceiveItem:v13];
  }
}

- (void)cell:(id)a3 didChangeInputText:(id)a4
{
  v16 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_lastEmptyWaypointCell);
  if (WeakRetained == v16 && [v6 length])
  {

LABEL_7:
    [(RoutePlanningWaypointListView *)self _refreshAddStopCellEnabled];
    goto LABEL_9;
  }

  v8 = objc_loadWeakRetained(&self->_lastEmptyWaypointCell);
  if (v8 == v16)
  {

    goto LABEL_9;
  }

  v9 = [v6 length];

  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (!self->_activelyEditingSelectedField)
  {
    self->_activelyEditingSelectedField = 1;
    v10 = [(RoutePlanningWaypointListView *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(RoutePlanningWaypointListView *)self delegate];
      [v12 didInteractWithWaypointFields];
    }
  }

  v13 = [(RoutePlanningWaypointListView *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(RoutePlanningWaypointListView *)self delegate];
    [v15 updateAutoCompleteWithText:v6];
  }
}

- (void)cellDidStopEditing:(id)a3
{
  v4 = [(RoutePlanningWaypointListView *)self _shouldEnableAddStopCell];
  WeakRetained = objc_loadWeakRetained(&self->_addStopCell);
  [WeakRetained setEnabled:v4];

  if (self->_selectedIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(RoutePlanningWaypointListView *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = sub_100BD3038();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        selectedIndex = self->_selectedIndex;
        v11 = 134217984;
        v12 = selectedIndex;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Did stop editing field at index %lu", &v11, 0xCu);
      }

      v10 = [(RoutePlanningWaypointListView *)self delegate];
      [v10 updateAutoCompleteWithText:0];
    }
  }
}

- (void)cellDidStartEditing:(id)a3 withUserInteraction:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  self->_selectedIndex = [(NSMutableArray *)self->_rows indexOfObject:v6];
  v7 = sub_100BD3038();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    selectedIndex = self->_selectedIndex;
    v19 = 134217984;
    v20 = selectedIndex;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Did start editing field at index %lu", &v19, 0xCu);
  }

  [(RoutePlanningWaypointListView *)self _updateLayoutGuideForCurrentlyEditingField];
  if (self->_activelyEditingSelectedField == v4)
  {
    [(RoutePlanningWaypointListView *)self scrollWaypointCellToVisible:v6 animated:1];
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    self->_activelyEditingSelectedField = v4;
    if (!v4)
    {
      [(RoutePlanningWaypointListView *)self scrollWaypointCellToVisible:v6 animated:1];
      goto LABEL_15;
    }

    v9 = [(RoutePlanningWaypointListView *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(RoutePlanningWaypointListView *)self delegate];
      [v11 waypointListView:self didStartEditingWaypointAtIndex:self->_selectedIndex];
    }

    v12 = [(RoutePlanningWaypointListView *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(RoutePlanningWaypointListView *)self delegate];
      [v14 didInteractWithWaypointFields];
    }

    [(RoutePlanningWaypointListView *)self scrollWaypointCellToVisible:v6 animated:1];
  }

  v15 = [(RoutePlanningWaypointListView *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = [(RoutePlanningWaypointListView *)self delegate];
    v18 = [v6 currentText];
    [v17 updateAutoCompleteWithText:v18];
  }

LABEL_15:
}

- (BOOL)_supportsCollapsingStops
{
  if ([(RoutePlanningWaypointListView *)self editingMode]< 2)
  {
    return 1;
  }

  if (sub_10000FA08(self) != 5 || (_UISolariumEnabled() & 1) != 0)
  {
    return 0;
  }

  return GEOConfigGetBOOL();
}

- (void)collapseStopsIfNeeded
{
  if ([(RoutePlanningWaypointListView *)self _supportsCollapsingStops]&& self->_expandedStops)
  {
    self->_expandedStops = 0;
    self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    v3 = sub_100BD3038();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Will now show reduced/collapsed stops", buf, 2u);
    }

    v4 = [(NSMutableArray *)self->_waypoints count];
    v5 = sub_10000FA08(self);
    v6 = 4;
    if (v5 == 5)
    {
      v6 = 9;
    }

    if (v4 > v6)
    {
      v7 = sub_100BD3038();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Reloading because we have enough stops that we should collapse them", v8, 2u);
      }

      [(RoutePlanningWaypointListView *)self _reloadAllRows];
    }
  }
}

- (void)expandStopsIfNeeded
{
  if (!self->_expandedStops)
  {
    v3 = sub_100BD3038();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Will now show all stops", buf, 2u);
    }

    self->_expandedStops = 1;
    self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    if (self->_hasCollapsedStops)
    {
      v4 = sub_100BD3038();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Reloading rows because we had collapsed stops", v5, 2u);
      }

      [(RoutePlanningWaypointListView *)self _reloadAllRows];
    }
  }
}

- (void)_refreshAddStopCellEnabled
{
  v3 = [(RoutePlanningWaypointListView *)self _findLastEmptyWaypointCell:self->_rows];
  objc_storeWeak(&self->_lastEmptyWaypointCell, v3);

  v4 = [(RoutePlanningWaypointListView *)self _shouldEnableAddStopCell];
  WeakRetained = objc_loadWeakRetained(&self->_addStopCell);
  [WeakRetained setEnabled:v4];
}

- (id)_findLastEmptyWaypointCell:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100BD4E44;
  v11 = sub_100BD4E54;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100BD4E5C;
  v6[3] = &unk_10164CE50;
  v6[4] = &v7;
  [v3 enumerateObjectsWithOptions:2 usingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)_shouldEnableAddStopCell
{
  WeakRetained = objc_loadWeakRetained(&self->_lastEmptyWaypointCell);

  if (WeakRetained)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    UInteger = GEOConfigGetUInteger();
    v4 = [(RoutePlanningWaypointListView *)self mprEnabled];
    if (v4)
    {
      if (UInteger)
      {
        LOBYTE(v4) = [(RoutePlanningWaypointListView *)self userAddedWaypointCount]< UInteger;
      }

      else
      {
        LOBYTE(v4) = 1;
      }
    }
  }

  return v4;
}

- (BOOL)addStop
{
  if ([(RoutePlanningWaypointListView *)self editingMode]!= 2)
  {
    WeakRetained = sub_100BD3038();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEBUG))
    {
      *v18 = 0;
      v16 = "Will not add stop, incorrect editing mode";
LABEL_10:
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEBUG, v16, v18, 2u);
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v3 = [(RoutePlanningWaypointListView *)self _shouldEnableAddStopCell];
  WeakRetained = sub_100BD3038();
  v5 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEBUG);
  if ((v3 & 1) == 0)
  {
    if (v5)
    {
      *v18 = 0;
      v16 = "Will not add stop, row should not be enabled";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v5)
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEBUG, "Will add stop", v18, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_addStopCell);
  v6 = objc_alloc_init(SearchFieldItem);
  v7 = [(RoutePlanningWaypointListView *)self editingMode]== 2;
  v8 = [RoutePlanningWaypointCell alloc];
  v20 = v6;
  v9 = 1;
  v10 = [NSArray arrayWithObjects:&v20 count:1];
  v11 = [(RoutePlanningWaypointCell *)v8 initWithWaypoints:v10 waypointIndex:0 editable:v7 delegate:self waypointInfoProvider:0 cellIndex:[(NSMutableArray *)self->_rows count]];

  v12 = [(NSMutableArray *)self->_rows count]- (WeakRetained != 0);
  [(NSMutableArray *)self->_rows insertObject:v11 atIndex:v12];
  [(NSMutableArray *)self->_waypoints insertObject:v6 atIndex:v12];
  tableView = self->_tableView;
  v14 = [NSIndexPath indexPathForRow:v12 inSection:0];
  v19 = v14;
  v15 = [NSArray arrayWithObjects:&v19 count:1];
  [(RoutePlanningWaypointTableView *)tableView insertRowsAtIndexPaths:v15 withRowAnimation:100];

  [(RoutePlanningWaypointListView *)self _refreshAddStopCellEnabled];
  [(RoutePlanningWaypointListView *)self _layoutDottedLines];
  [(RoutePlanningWaypointListView *)self invalidateIntrinsicContentSize];

LABEL_12:
  return v9;
}

- (void)_layoutDottedLineForCell:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableArray *)self->_dottedLines count];
  if (v8 != [(NSMutableArray *)self->_rows count]- 1)
  {
    v54 = sub_10006D178();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v71 = "[RoutePlanningWaypointListView _layoutDottedLineForCell:atIndexPath:]";
      v72 = 2080;
      v73 = "RoutePlanningWaypointListView.m";
      v74 = 1024;
      v75 = 592;
      v76 = 2080;
      v77 = "_dottedLines.count == _rows.count - 1";
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v55 = sub_10006D178();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v71 = v56;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v9 = [v7 row];
  if ([(NSMutableArray *)self->_rows count]!= v9 + 1)
  {
    v10 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:?];
    [v6 layoutIfNeeded];
    [v10 layoutIfNeeded];
    v11 = [v6 viewWithTag:10101];
    v12 = [v10 viewWithTag:10101];
    v13 = [v11 window];
    if (v13)
    {
      v14 = v13;
      v15 = [v12 window];

      if (v15)
      {
        tableView = self->_tableView;
        [v11 frame];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v25 = [v11 superview];
        [(RoutePlanningWaypointTableView *)tableView convertRect:v25 fromView:v18, v20, v22, v24];
        v62 = v27;
        v63 = v26;
        v60 = v29;
        v61 = v28;

        v30 = self->_tableView;
        [v12 frame];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v39 = [v12 superview];
        [(RoutePlanningWaypointTableView *)v30 convertRect:v39 fromView:v32, v34, v36, v38];
        v58 = v41;
        v59 = v40;
        rect = v42;
        v44 = v43;

        if ((_UISolariumEnabled() & 1) == 0)
        {
          sub_10000FA08(v6);
        }

        _UISolariumEnabled();
        v78.origin.x = v63;
        v78.origin.y = v62;
        v78.size.width = v61;
        v78.size.height = v60;
        CGRectGetMidX(v78);
        v79.origin.x = v63;
        v79.origin.y = v62;
        v79.size.width = v61;
        v79.size.height = v60;
        CGRectGetMaxY(v79);
        v80.origin.y = v58;
        v80.origin.x = v59;
        v80.size.width = rect;
        v80.size.height = v44;
        CGRectGetMinY(v80);
        v81.origin.x = v63;
        v81.origin.y = v62;
        v81.size.width = v61;
        v81.size.height = v60;
        CGRectGetMaxY(v81);
        UIRectRoundToViewScale();
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v52 = v51;
        [(NSMutableArray *)self->_dottedLines objectAtIndexedSubscript:v9];
        v64[0] = _NSConcreteStackBlock;
        v64[1] = 3221225472;
        v64[2] = sub_100BD56CC;
        v65 = v64[3] = &unk_10164E3F8;
        v66 = v46;
        v67 = v48;
        v68 = v50;
        v69 = v52;
        v53 = v65;
        [UIView performWithoutAnimation:v64];
      }
    }
  }
}

- (void)_layoutDottedLines
{
  if (([(RoutePlanningWaypointTableView *)self->_tableView hasUncommittedUpdates]& 1) == 0)
  {
    if ([(NSMutableArray *)self->_rows count])
    {
      v3 = [(NSMutableArray *)self->_rows count]- 1;
    }

    else
    {
      v3 = 0;
    }

    if (v3 != [(NSMutableArray *)self->_dottedLines count])
    {
      for (i = [[NSMutableArray alloc] initWithCapacity:v3]; v3; --v3)
      {
        v5 = [(NSMutableArray *)self->_dottedLines lastObject];
        if (v5)
        {
          v6 = v5;
          [(NSMutableArray *)self->_dottedLines removeLastObject];
        }

        else
        {
          if (_UISolariumEnabled())
          {
            v7 = 1;
          }

          else
          {
            v7 = 4;
          }

          v6 = [[TransitDirectionsColoredLine alloc] initWithStyle:v7];
          [(TransitDirectionsColoredLine *)v6 setAutoresizingMask:16];
          if (_UISolariumEnabled())
          {
            v8 = +[UIColor labelColor];
            v9 = [v8 colorWithAlphaComponent:0.1];
            [(TransitDirectionsColoredLine *)v6 setLineColor:v9];
          }

          else
          {
            v8 = +[UIColor systemGrayColor];
            [(TransitDirectionsColoredLine *)v6 setLineColor:v8];
          }

          [(RoutePlanningWaypointTableView *)self->_tableView addSubview:v6];
        }

        [(NSMutableArray *)i addObject:v6];
        [(RoutePlanningWaypointTableView *)self->_tableView sendSubviewToBack:v6];
      }

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = self->_dottedLines;
      v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        do
        {
          for (j = 0; j != v12; j = j + 1)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v18 + 1) + 8 * j) removeFromSuperview];
          }

          v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }

      dottedLines = self->_dottedLines;
      self->_dottedLines = i;
    }

    v16 = self->_dottedLines;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100BD59A0;
    v17[3] = &unk_10164CE28;
    v17[4] = self;
    [(NSMutableArray *)v16 enumerateObjectsUsingBlock:v17];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = RoutePlanningWaypointListView;
  v4 = a3;
  [(RoutePlanningWaypointListView *)&v8 traitCollectionDidChange:v4];
  v5 = [(RoutePlanningWaypointListView *)self traitCollection:v8.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
  {
    [(RoutePlanningWaypointListView *)self _reloadAllRows];
  }
}

- (id)cellForIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_rows count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (unint64_t)searchFieldIndexForWaypoints:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(NSMutableArray *)self->_rows count])
    {
      v5 = 0;
      while (1)
      {
        v6 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:v5];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:v5];
        }

        else
        {
          v7 = 0;
        }

        v8 = [v7 waypoints];

        if (v8 == v4)
        {
          break;
        }

        if (++v5 >= [(NSMutableArray *)self->_rows count])
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [NSString stringWithFormat:@"The waypoints (%@) should be in the list (%@)", v4, self->_waypoints];
        *buf = 136315906;
        v15 = "[RoutePlanningWaypointListView searchFieldIndexForWaypoints:]";
        v16 = 2080;
        v17 = "RoutePlanningWaypointListView.m";
        v18 = 1024;
        v19 = 510;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v11 = sub_10006D178();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v15 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (void)scrollWaypointCellToVisible:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NSMutableArray *)self->_rows indexOfObject:v6];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    v9 = sub_100BD3038();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = 134218242;
      v13 = v8;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Scrolling to frame cell at index %lu: %@", &v12, 0x16u);
    }

    tableView = self->_tableView;
    v11 = [NSIndexPath indexPathForRow:v8 inSection:0];
    [(RoutePlanningWaypointTableView *)tableView scrollToRowAtIndexPath:v11 atScrollPosition:1 animated:v4];
  }
}

- (void)deselectAllRows
{
  v3 = sub_100BD3038();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Deselect all rows", buf, 2u);
  }

  self->_activelyEditingSelectedField = 0;
  self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_rows;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 endEditing];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_restoreCurrentlySelectedEditingIfNeeded:(id)a3
{
  v4 = a3;
  selectedIndex = self->_selectedIndex;
  if (selectedIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (selectedIndex < [(NSMutableArray *)self->_rows count]&& (([(NSMutableArray *)self->_rows objectAtIndexedSubscript:selectedIndex], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v7 = 0) : (v7 = v6), v8 = v7, v6, v8))
    {
      v9 = [v8 waypoints];
      v10 = [v9 count];

      if (v10 < 2)
      {
        v13 = sub_100BD3038();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v19 = 134217984;
          v20 = selectedIndex;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Restoring editing for currently selected row at index %lu", &v19, 0xCu);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v15 = sub_10006D178();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = [NSString stringWithFormat:@"Can only select waypoint cells"];
            v19 = 136316162;
            v20 = "[RoutePlanningWaypointListView _restoreCurrentlySelectedEditingIfNeeded:]";
            v21 = 2080;
            v22 = "RoutePlanningWaypointListView.m";
            v23 = 1024;
            v24 = 473;
            v25 = 2080;
            v26 = "[cell isKindOfClass:[RoutePlanningWaypointCell class]]";
            v27 = 2112;
            v28 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", &v19, 0x30u);
          }

          if (sub_100E03634())
          {
            v17 = sub_10006D178();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = +[NSThread callStackSymbols];
              v19 = 138412290;
              v20 = v18;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", &v19, 0xCu);
            }
          }
        }

        v14 = [v8 window];
        [(RoutePlanningWaypointListView *)self scrollWaypointCellToVisible:v8 animated:v14 != 0];

        [v8 beginEditing];
        goto LABEL_13;
      }

      v11 = "cell at index has collapsed waypoints";
    }

    else
    {
      v6 = 0;
      v11 = "cell is nil";
    }

    v12 = sub_100BD3038();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v19 = 136446210;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Clearing previous selection/editing and forcing no autocomplete: %{public}s", &v19, 0xCu);
    }

    self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    self->_activelyEditingSelectedField = 0;
    [(RoutePlanningWaypointListView *)self cellDidStopEditing:v4];
LABEL_13:
  }
}

- (void)selectNextSearchField
{
  v3 = [(RoutePlanningWaypointListView *)self selectedIndex];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL || (v4 = v3 + 1, v3 + 1 > [(RoutePlanningWaypointListView *)self indexForLastWaypointCell]))
  {
    v5 = sub_100BD3038();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Found no next field to select, will deselect all", v7, 2u);
    }

    [(RoutePlanningWaypointListView *)self deselectAllRows];
  }

  else
  {
    v6 = sub_100BD3038();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Select next search field", buf, 2u);
    }

    [(RoutePlanningWaypointListView *)self selectRowIndex:v4];
  }
}

- (void)selectRowIndex:(unint64_t)a3
{
  v5 = [(RoutePlanningWaypointListView *)self waypoints];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    if (![(RoutePlanningWaypointListView *)self mprEnabled])
    {
      return;
    }

    v11 = sub_100BD3038();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Selected Add Stop index, will add stop", &v17, 2u);
    }

    v10 = [(RoutePlanningWaypointListView *)self delegate];
    [v10 waypointListViewDidSelectAddStop:self];
  }

  else
  {
    v7 = sub_100BD3038();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v17 = 134217984;
      v18 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Selecting row at index %lu", &v17, 0xCu);
    }

    self->_activelyEditingSelectedField = 0;
    self->_selectedIndex = a3;
    if ([(NSMutableArray *)self->_rows count]<= a3)
    {
      v10 = 0;
    }

    else
    {
      v8 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:a3];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [NSString stringWithFormat:@"Can only select waypoint cells"];
        v17 = 136316162;
        v18 = "[RoutePlanningWaypointListView selectRowIndex:]";
        v19 = 2080;
        v20 = "RoutePlanningWaypointListView.m";
        v21 = 1024;
        v22 = 437;
        v23 = 2080;
        v24 = "[cell isKindOfClass:[RoutePlanningWaypointCell class]]";
        v25 = 2112;
        v26 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", &v17, 0x30u);
      }

      if (sub_100E03634())
      {
        v15 = sub_10006D178();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = +[NSThread callStackSymbols];
          v17 = 138412290;
          v18 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", &v17, 0xCu);
        }
      }
    }

    if (v10)
    {
      v12 = [v10 window];
      [(RoutePlanningWaypointListView *)self scrollWaypointCellToVisible:v10 animated:v12 != 0];

      [v10 beginEditing];
    }
  }
}

- (double)_rowHeight
{
  if ((_UISolariumEnabled() & 1) != 0 || sub_10000FA08(self) != 5)
  {
    if (qword_10195E9E0 != -1)
    {
      dispatch_once(&qword_10195E9E0, &stru_10164CDC0);
    }

    v4 = qword_10195E9D8;
    v5 = [(RoutePlanningWaypointListView *)self traitCollection];
    v6 = [v5 _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
    v7 = [v4 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v6];

    v8 = _UISolariumEnabled();
    v9 = sub_10000FA08(self);
    v10 = 52.0;
    if (v9 == 5)
    {
      v10 = 36.0;
    }

    v11 = 44.0;
    if (v9 == 5)
    {
      v11 = 28.0;
    }

    if (v8)
    {
      v3 = v10;
    }

    else
    {
      v3 = v11;
    }

    [v7 _mapkit_lineHeight];
    if (v12 + 22.0 > v3)
    {
      [v7 _mapkit_lineHeight];
      v3 = v13 + 22.0;
    }
  }

  else if (sub_10000FA08(self) == 5)
  {
    return 28.0;
  }

  else
  {
    return 44.0;
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  [(RoutePlanningWaypointListView *)self _contentHeight];
  v4 = v3;
  if ([(RoutePlanningWaypointTableView *)self->_tableView isScrollEnabled]&& (sub_10000FA08(self) != 5 || _UISolariumEnabled()))
  {
    v5 = [(RoutePlanningWaypointListView *)self traitCollection];
    if ([v5 verticalSizeClass] == 1)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    WeakRetained = objc_loadWeakRetained(&self->_addStopCell);
    if (WeakRetained)
    {
      v8 = v6 + 1;
    }

    else
    {
      v8 = v6;
    }

    v9 = v8;
    [(RoutePlanningWaypointTableView *)self->_tableView rowHeight];
    if (v4 >= v10 * v9)
    {
      [(RoutePlanningWaypointTableView *)self->_tableView rowHeight];
      v4 = v11 * v9;
    }
  }

  v12 = UIViewNoIntrinsicMetric;
  v13 = v4;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)setMprEnabled:(BOOL)a3
{
  if (self->_mprEnabled != a3)
  {
    v3 = a3;
    v5 = sub_100BD3038();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v7 = v6;
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Toggling MPR enabled -> %{public}@", &v8, 0xCu);
    }

    self->_mprEnabled = v3;
    [(RoutePlanningWaypointListView *)self _reloadAllRows];
  }
}

- (BOOL)replaceWaypointAtIndex:(unint64_t)a3 withWaypoint:(id)a4
{
  v6 = a4;
  v7 = [(RoutePlanningWaypointListView *)self cellForIndex:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = 0;
  if ([(RoutePlanningWaypointListView *)self editingMode]== 2 && v9)
  {
    if ([v9 isEditable])
    {
      v11 = sub_100BD3038();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v26 = a3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Will replace waypoint at index %lu", buf, 0xCu);
      }

      v22 = [(RoutePlanningWaypointListView *)self editingMode]== 2;
      v12 = [RoutePlanningWaypointCell alloc];
      v24 = v6;
      v10 = 1;
      v13 = [NSArray arrayWithObjects:&v24 count:1];
      v14 = [NSNumber numberWithUnsignedInteger:a3];
      v15 = [v9 delegate];
      WeakRetained = objc_loadWeakRetained(&self->_waypointInfoProvider);
      v17 = [(RoutePlanningWaypointCell *)v12 initWithWaypoints:v13 waypointIndex:v14 editable:v22 delegate:v15 waypointInfoProvider:WeakRetained cellIndex:a3];

      [v9 prepareForReplacement];
      [(NSMutableArray *)self->_rows replaceObjectAtIndex:a3 withObject:v17];
      [(NSMutableArray *)self->_waypoints replaceObjectAtIndex:a3 withObject:v6];
      tableView = self->_tableView;
      v19 = [NSIndexPath indexPathForRow:a3 inSection:0];
      v23 = v19;
      v20 = [NSArray arrayWithObjects:&v23 count:1];
      [(RoutePlanningWaypointTableView *)tableView reloadRowsAtIndexPaths:v20 withRowAnimation:5];

      [(RoutePlanningWaypointListView *)self _refreshAddStopCellEnabled];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)_reloadAllRows
{
  v3 = objc_opt_new();
  v4 = [(RoutePlanningWaypointListView *)self waypoints];
  v5 = [v4 count];
  v6 = sub_100BD3038();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      *buf = 134217984;
      v59 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Reloading all rows for %lu waypoints", buf, 0xCu);
    }

    [(RoutePlanningWaypointListView *)self setHidden:0];
    self->_hasCollapsedStops = 0;
    UInteger = GEOConfigGetUInteger();
    if (![(RoutePlanningWaypointListView *)self mprEnabled]|| UInteger && [(RoutePlanningWaypointListView *)self userAddedWaypointCount]>= UInteger)
    {
      v9 = 0;
    }

    else
    {
      v9 = [(RoutePlanningWaypointListView *)self _hasAllValidWaypoints];
    }

    if (self->_expandedStops || ![(RoutePlanningWaypointListView *)self _supportsCollapsingStops])
    {
      goto LABEL_16;
    }

    v10 = sub_10000FA08(self);
    v11 = 4;
    if (v10 == 5)
    {
      v11 = 9;
    }

    if (v5 > v11 && [(RoutePlanningWaypointListView *)self mprEnabled])
    {
      self->_hasCollapsedStops = 1;
      v12 = [RoutePlanningWaypointCell alloc];
      v13 = [v4 firstObject];
      v69 = v13;
      v14 = [NSArray arrayWithObjects:&v69 count:1];
      WeakRetained = objc_loadWeakRetained(&self->_waypointInfoProvider);
      v16 = [(RoutePlanningWaypointCell *)v12 initWithWaypoints:v14 waypointIndex:&off_1016E9320 editable:0 delegate:self waypointInfoProvider:WeakRetained cellIndex:0];
      [v3 addObject:v16];

      v17 = [RoutePlanningWaypointCell alloc];
      v18 = [v4 subarrayWithRange:{1, v5 - 2}];
      v19 = [(RoutePlanningWaypointCell *)v17 initWithWaypoints:v18 waypointIndex:0 editable:0 delegate:self waypointInfoProvider:0 cellIndex:1];
      [v3 addObject:v19];

      v20 = [RoutePlanningWaypointCell alloc];
      v21 = [v4 lastObject];
      v68 = v21;
      v22 = [NSArray arrayWithObjects:&v68 count:1];
      v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 count] - 1);
      v24 = objc_loadWeakRetained(&self->_waypointInfoProvider);
      v25 = [(RoutePlanningWaypointCell *)v20 initWithWaypoints:v22 waypointIndex:v23 editable:0 delegate:self waypointInfoProvider:v24 cellIndex:2];
      [v3 addObject:v25];
    }

    else
    {
LABEL_16:
      v26 = [(RoutePlanningWaypointListView *)self editingMode]== 2;
      v27 = [(RoutePlanningWaypointListView *)self mprEnabled];
      v28 = 2;
      if (v5 < 2)
      {
        v28 = v5;
      }

      if (!v27)
      {
        v5 = v28;
      }

      if (v5 <= 1)
      {
        v49 = sub_10006D178();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = [NSString stringWithFormat:@"waypointDisplayCount is %lu, should be >= 2", 1];
          *buf = 136316162;
          v59 = "[RoutePlanningWaypointListView _reloadAllRows]";
          v60 = 2080;
          v61 = "RoutePlanningWaypointListView.m";
          v62 = 1024;
          v63 = 304;
          v64 = 2080;
          v65 = "waypointDisplayCount >= 2";
          v66 = 2112;
          v67 = v50;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
        }

        if (sub_100E03634())
        {
          v51 = sub_10006D178();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v52 = +[NSThread callStackSymbols];
            *buf = 138412290;
            v59 = v52;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }
      }

      v21 = [v4 subarrayWithRange:{0, v5}];
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_100BD76C8;
      v53[3] = &unk_10164CDA0;
      v57 = v26;
      v54 = v3;
      v55 = self;
      v56 = v5;
      [v21 enumerateObjectsUsingBlock:v53];
      v22 = v54;
    }

    v29 = [(RoutePlanningWaypointListView *)self _findLastEmptyWaypointCell:v3];
    objc_storeWeak(&self->_lastEmptyWaypointCell, v29);

    if (v9)
    {
      v30 = objc_opt_new();
      [v3 addObject:v30];

      v31 = [v3 lastObject];
      objc_storeWeak(&self->_addStopCell, v31);

      v32 = objc_loadWeakRetained(&self->_addStopCell);
      [v32 setIconViewTag:10101];

      v33 = [(RoutePlanningWaypointListView *)self _shouldEnableAddStopCell];
      v34 = objc_loadWeakRetained(&self->_addStopCell);
      [v34 setEnabled:v33];
    }

    [(RoutePlanningWaypointTableView *)self->_tableView separatorInset];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = [v3 firstObject];
    [v41 preferredSeparatorInset];
    v43 = v42;

    if (_UISolariumEnabled())
    {
      if (sub_10000FA08(self) == 5)
      {
        v40 = 18.0;
      }

      else
      {
        v40 = 20.0;
      }
    }

    [(RoutePlanningWaypointTableView *)self->_tableView setSeparatorInset:v36, v43, v38, v40];
    selectedIndex = self->_selectedIndex;
    if (selectedIndex == 0x7FFFFFFFFFFFFFFFLL || selectedIndex >= [v3 count] || ((objc_msgSend(v3, "objectAtIndexedSubscript:", self->_selectedIndex), v45 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v46 = 0) : (v46 = v45), v47 = v46, v45, !v47))
    {
      v45 = 0;
      self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    }

    objc_storeStrong(&self->_rows, v3);
    [(RoutePlanningWaypointListView *)self invalidateIntrinsicContentSize];
    [(RoutePlanningWaypointTableView *)self->_tableView reloadData];
    [(RoutePlanningWaypointListView *)self _restoreCurrentlySelectedEditingIfNeeded:v45];
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "No waypoints, clear list", buf, 2u);
    }

    self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    self->_activelyEditingSelectedField = 0;
    rows = self->_rows;
    self->_rows = 0;

    objc_storeWeak(&self->_addStopCell, 0);
    self->_hasCollapsedStops = 0;
    [(RoutePlanningWaypointListView *)self setHidden:1];
    [(RoutePlanningWaypointListView *)self invalidateIntrinsicContentSize];
    [(RoutePlanningWaypointTableView *)self->_tableView reloadData];
    [(RoutePlanningWaypointListView *)self _layoutDottedLines];
    [(RoutePlanningWaypointListView *)self _updateLayoutGuideForCurrentlyEditingField];
  }
}

- (BOOL)_hasAllValidWaypoints
{
  if (!_UISolariumEnabled() || sub_10000FA08(self) != 5)
  {
    return 1;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(RoutePlanningWaypointListView *)self waypoints];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * i) isEmpty])
        {
          v8 = 0;
          goto LABEL_14;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_14:

  return v8;
}

- (void)refreshWaypointDisplay
{
  if (self->_waypoints)
  {
    [(RoutePlanningWaypointListView *)self _reloadAllRows];
  }
}

- (unint64_t)userAddedWaypointCount
{
  v2 = [(RoutePlanningWaypointListView *)self waypoints];
  v3 = sub_1000282CC(v2, &stru_10164CD78);
  v4 = [v3 count];

  return v4;
}

- (void)setWaypoints:(id)a3
{
  v4 = a3;
  if ([v4 count] == 1 && -[RoutePlanningWaypointListView editingMode](self, "editingMode") == 2)
  {
    v5 = objc_opt_new();
    v6 = [v4 arrayByAddingObject:v5];

    v7 = sub_100BD3038();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Inserted additional waypoint to ensure we have a minimum of two", buf, 2u);
    }

    v4 = v6;
  }

  v8 = self->_waypoints;
  v9 = v4;
  if (v9 | v8)
  {
    v10 = [v8 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      v11 = sub_100BD3038();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Updating waypoints...", v14, 2u);
      }

      v12 = [v9 mutableCopy];
      waypoints = self->_waypoints;
      self->_waypoints = v12;

      [(RoutePlanningWaypointListView *)self _reloadAllRows];
    }
  }
}

- (NSArray)waypoints
{
  if ([(NSMutableArray *)self->_waypoints count]<= 1 && [(RoutePlanningWaypointListView *)self editingMode]== 2)
  {
    v3 = [(NSMutableArray *)self->_waypoints firstObject];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = objc_opt_new();
    }

    v6 = v5;

    v7 = [NSMutableArray alloc];
    v8 = objc_opt_new();
    v9 = [v7 initWithObjects:{v6, v8, 0}];
    waypoints = self->_waypoints;
    self->_waypoints = v9;
  }

  v11 = self->_waypoints;

  return v11;
}

- (void)_updateLayoutGuideForCurrentlyEditingField
{
  if (self->_layoutGuideConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
  }

  v3 = self->_tableView;
  v4 = [(RoutePlanningWaypointListView *)self selectedIndex];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(RoutePlanningWaypointListView *)self cellForIndex:v4];

    v3 = v5;
  }

  v28 = [(RoutePlanningWaypointListView *)self layoutGuideForCurrentlyEditingField];
  v27 = [v28 widthAnchor];
  v26 = [(RoutePlanningWaypointTableView *)self->_tableView widthAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v31[0] = v25;
  v24 = [(RoutePlanningWaypointListView *)self layoutGuideForCurrentlyEditingField];
  v23 = [v24 centerXAnchor];
  v22 = [(RoutePlanningWaypointTableView *)self->_tableView centerXAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v31[1] = v21;
  v20 = [(RoutePlanningWaypointListView *)self layoutGuideForCurrentlyEditingField];
  v19 = [v20 heightAnchor];
  v18 = [(RoutePlanningWaypointTableView *)v3 heightAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v31[2] = v17;
  v16 = [(RoutePlanningWaypointListView *)self layoutGuideForCurrentlyEditingField];
  v6 = [v16 topAnchor];
  v7 = [(RoutePlanningWaypointTableView *)v3 topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v31[3] = v8;
  v9 = [(RoutePlanningWaypointTableView *)v3 bottomAnchor];
  v10 = [(RoutePlanningWaypointListView *)self layoutGuideForCurrentlyEditingField];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v31[4] = v12;
  v13 = [NSArray arrayWithObjects:v31 count:5];
  layoutGuideConstraints = self->_layoutGuideConstraints;
  self->_layoutGuideConstraints = v13;

  [NSLayoutConstraint activateConstraints:self->_layoutGuideConstraints];
  v15 = sub_100BD3038();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v30 = v3;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Updating layout guide to %@", buf, 0xCu);
  }
}

- (RoutePlanningWaypointListView)initWithWaypoints:(id)a3 editingMode:(unint64_t)a4 delegate:(id)a5 waypointInfoProvider:(id)a6
{
  v65 = a3;
  obj = a5;
  v66 = a6;
  v70.receiver = self;
  v70.super_class = RoutePlanningWaypointListView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v13 = [(RoutePlanningWaypointListView *)&v70 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (v13)
  {
    v14 = [v65 mutableCopy];
    waypoints = v13->_waypoints;
    v13->_waypoints = v14;

    v13->_editingMode = a4;
    objc_storeWeak(&v13->_delegate, obj);
    objc_storeWeak(&v13->_waypointInfoProvider, v66);
    v13->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    v13->_expandedStops = ![(RoutePlanningWaypointListView *)v13 _supportsCollapsingStops];
    [(RoutePlanningWaypointListView *)v13 setAccessibilityIdentifier:@"RoutePlanningWaypointListView"];
    v16 = [[RoutePlanningWaypointTableView alloc] initWithFrame:2 style:CGRectZero.origin.x, y, width, height];
    tableView = v13->_tableView;
    v13->_tableView = v16;

    [(RoutePlanningWaypointTableView *)v13->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RoutePlanningWaypointTableView *)v13->_tableView setDelegate:v13];
    [(RoutePlanningWaypointTableView *)v13->_tableView setDataSource:v13];
    [(RoutePlanningWaypointTableView *)v13->_tableView _setTopPadding:0.0];
    [(RoutePlanningWaypointTableView *)v13->_tableView _setBottomPadding:0.0];
    [(RoutePlanningWaypointTableView *)v13->_tableView setSectionHeaderHeight:0.0];
    [(RoutePlanningWaypointTableView *)v13->_tableView setSectionFooterHeight:0.0];
    v18 = +[UIColor clearColor];
    [(RoutePlanningWaypointTableView *)v13->_tableView setBackgroundColor:v18];

    if (sub_10000FA08(v13) == 5)
    {
      v19 = 0.01;
    }

    else
    {
      +[_TtC4Maps23MapsDesignConstantsShim contentHorizontalPadding];
      v19 = v20;
    }

    v21 = _UISolariumEnabled();
    v22 = v19;
    v23 = v19;
    if ((v21 & 1) == 0)
    {
      if (sub_10000FA08(v13) == 5)
      {
        v22 = 8.0;
      }

      else
      {
        v22 = 16.0;
      }

      if (sub_10000FA08(v13) == 5)
      {
        v23 = 8.0;
      }

      else
      {
        v23 = 16.0;
      }
    }

    [(RoutePlanningWaypointTableView *)v13->_tableView setDirectionalLayoutMargins:0.0, v22, 0.0, v23];
    [(RoutePlanningWaypointTableView *)v13->_tableView setSeparatorStyle:1];
    v24 = (sub_10000FA08(v13) != 5 || _UISolariumEnabled()) && a4 == 2;
    [(RoutePlanningWaypointTableView *)v13->_tableView setScrollEnabled:v24];
    [(RoutePlanningWaypointTableView *)v13->_tableView setAlwaysBounceVertical:0];
    [(RoutePlanningWaypointTableView *)v13->_tableView setDragInteractionEnabled:a4 != 0];
    [(RoutePlanningWaypointTableView *)v13->_tableView setAccessibilityIdentifier:@"RoutePlanningWaypointListViewTableView"];
    v25 = _UISolariumEnabled();
    v26 = sub_10000FA08(v13);
    v27 = 44.0;
    if (v26 == 5)
    {
      v27 = 28.0;
    }

    v28 = 52.0;
    if (v26 == 5)
    {
      v28 = 36.0;
    }

    if (v25)
    {
      v27 = v28;
    }

    [(RoutePlanningWaypointTableView *)v13->_tableView setEstimatedRowHeight:v27];
    [(RoutePlanningWaypointTableView *)v13->_tableView _setAllowsReorderingWhenNotEditing:1];
    [(RoutePlanningWaypointListView *)v13 addSubview:v13->_tableView];
    v29 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    glassView = v13->_glassView;
    v13->_glassView = v29;

    v31 = +[UIColor clearColor];
    [(UIView *)v13->_glassView setBackgroundColor:v31];

    [(UIView *)v13->_glassView setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = sub_10000FA08(v13);
    v33 = 26.0;
    if (v32 == 5)
    {
      v33 = 16.0;
    }

    [(UIView *)v13->_glassView _setContinuousCornerRadius:v33];
    [(RoutePlanningWaypointListView *)v13 insertSubview:v13->_glassView below:v13->_tableView];
    [(UIView *)v13->_glassView _maps_applyLossyGlassBackground];
    v63 = [(RoutePlanningWaypointTableView *)v13->_tableView leadingAnchor];
    v62 = [(RoutePlanningWaypointListView *)v13 leadingAnchor];
    v61 = [v63 constraintEqualToAnchor:v62];
    v71[0] = v61;
    v60 = [(RoutePlanningWaypointTableView *)v13->_tableView trailingAnchor];
    v59 = [(RoutePlanningWaypointListView *)v13 trailingAnchor];
    v58 = [v60 constraintEqualToAnchor:v59];
    v71[1] = v58;
    v57 = [(RoutePlanningWaypointTableView *)v13->_tableView topAnchor];
    v56 = [(RoutePlanningWaypointListView *)v13 topAnchor];
    v55 = [v57 constraintEqualToAnchor:v56];
    v71[2] = v55;
    v54 = [(RoutePlanningWaypointTableView *)v13->_tableView bottomAnchor];
    v53 = [(RoutePlanningWaypointListView *)v13 bottomAnchor];
    v52 = [v54 constraintEqualToAnchor:v53];
    v71[3] = v52;
    v51 = [(UIView *)v13->_glassView leadingAnchor];
    v50 = [(RoutePlanningWaypointTableView *)v13->_tableView leadingAnchor];
    v49 = [v51 constraintEqualToAnchor:v50 constant:v19];
    v71[4] = v49;
    v48 = [(UIView *)v13->_glassView trailingAnchor];
    v47 = [(RoutePlanningWaypointTableView *)v13->_tableView trailingAnchor];
    v34 = [v48 constraintEqualToAnchor:v47 constant:-v19];
    v71[5] = v34;
    v35 = [(UIView *)v13->_glassView topAnchor];
    v36 = [(RoutePlanningWaypointTableView *)v13->_tableView topAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    v71[6] = v37;
    v38 = [(UIView *)v13->_glassView bottomAnchor];
    v39 = [(RoutePlanningWaypointTableView *)v13->_tableView bottomAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    v71[7] = v40;
    v41 = [NSArray arrayWithObjects:v71 count:8];
    [NSLayoutConstraint activateConstraints:v41];

    v42 = objc_alloc_init(UILayoutGuide);
    layoutGuideForCurrentlyEditingField = v13->_layoutGuideForCurrentlyEditingField;
    v13->_layoutGuideForCurrentlyEditingField = v42;

    [(UILayoutGuide *)v13->_layoutGuideForCurrentlyEditingField setIdentifier:@"RoutePlanning.CurrentlyEditingField"];
    [(RoutePlanningWaypointListView *)v13 addLayoutGuide:v13->_layoutGuideForCurrentlyEditingField];
    v44 = [(RoutePlanningWaypointTableView *)v13->_tableView isScrollEnabled];
    LODWORD(v45) = 1148846080;
    if (v44)
    {
      *&v45 = 750.0;
    }

    [(RoutePlanningWaypointListView *)v13 setContentCompressionResistancePriority:1 forAxis:v45];
    [(RoutePlanningWaypointListView *)v13 _reloadAllRows];
    [(RoutePlanningWaypointListView *)v13 _updateLayoutGuideForCurrentlyEditingField];
    objc_initWeak(&location, v13);
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_100BD87C4;
    v67[3] = &unk_101661B98;
    objc_copyWeak(&v68, &location);
    [(RoutePlanningWaypointTableView *)v13->_tableView setPostLayoutHandler:v67];
    objc_destroyWeak(&v68);
    objc_destroyWeak(&location);
  }

  return v13;
}

@end